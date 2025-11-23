<?php
declare(strict_types=1);
ini_set('display_errors','0');
error_reporting(E_ERROR);

require __DIR__.'/_bootstrap.php';               // $EMPRESA + autoload (TCPDF)
require_once __DIR__ . "/../../controladores/ventas.controlador.php";
require_once __DIR__ . "/../../modelos/ventas.modelo.php";
require_once __DIR__ . "/../../controladores/pagos.controlador.php";
require_once __DIR__ . "/../../modelos/pagos.modelo.php";

$fecha1 = isset($_GET['fecha1']) ? $_GET['fecha1'] : date('Y-m-d');
$fecha2 = isset($_GET['fecha2']) ? $_GET['fecha2'] : $fecha1;

// Trae pagos (tu método actual por fecha; si tenés uno por rango, usalo)
$pagos = ControladorPagos::ctrMostrarPagosFecha('fecha', $fecha1) ?: [];

// Helpers
$money = fn($n) => number_format((float)$n, 2, '.', ',');
$human = fn($d) => date('d/m/Y', strtotime($d));

// Resúmenes por método
$sum = [
  'EFECTIVO' => ['m'=>0.0,'c'=>0],
  'TARJETA'  => ['m'=>0.0,'c'=>0],
  'CHEQUE'   => ['m'=>0.0,'c'=>0],
  'TRANSFERENCIA'=>['m'=>0.0,'c'=>0],
  'CTA.CORRIENTE'=>['m'=>0.0,'c'=>0],
  'VALE'     => ['m'=>0.0,'c'=>0],
];
$total_m = 0.0; $total_c = 0;

// PDF A4 con TCPDF
$pdf = new \TCPDF('P','mm','A4', true, 'UTF-8', false);
$pdf->SetMargins(10,10,10);
$pdf->SetAutoPageBreak(true, 12);
$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);
$pdf->AddPage();

// Encabezado
$pdf->SetFont('helvetica','B',13);
$pdf->Cell(0,6, $EMPRESA['nombre'] ?? 'Mi Empresa', 0,1,'C');
$pdf->SetFont('helvetica','',9);
$sub = [];
if (!empty($EMPRESA['telefono']))  $sub[] = 'Tel. '.$EMPRESA['telefono'];
if (!empty($EMPRESA['direccion'])) $sub[] = $EMPRESA['direccion'];
if (!empty($EMPRESA['extra']))     $sub[] = $EMPRESA['extra'];
if ($sub) $pdf->MultiCell(0,5, implode(' • ', $sub), 0, 'C');
$pdf->Ln(1);

$pdf->SetFont('helvetica','B',12);
$pdf->Cell(0,6, 'CAJA', 0,1,'C');

$pdf->SetFont('helvetica','',9);
$periodo = ($fecha1 === $fecha2)
  ? ('Fecha: '.$human($fecha1))
  : ('Periodo: '.$human($fecha1).' al '.$human($fecha2));
$pdf->Cell(0,5, $periodo.'   •   Generado: '.date('d/m/Y H:i'), 0,1,'C');
$pdf->Ln(2);
$pdf->SetLineWidth(0.2);
$pdf->Line(10, $pdf->GetY(), 200, $pdf->GetY());
$pdf->Ln(2);

// Tabla
$W = ['fecha'=>28, 'codigo'=>35, 'cliente'=>87, 'importe'=>30]; // suma 180 (200-20 márgenes)
$pdf->SetFillColor(230,230,230);
$pdf->SetFont('helvetica','B',9);
$pdf->Cell($W['fecha'],   7, 'Fecha',        1, 0, 'C', true);
$pdf->Cell($W['codigo'],  7, 'Nro. Factura', 1, 0, 'C', true);
$pdf->Cell($W['cliente'], 7, 'Cliente',      1, 0, 'C', true);
$pdf->Cell($W['importe'], 7, 'Importe',      1, 1, 'R', true);

$pdf->SetFont('helvetica','',9);

foreach ($pagos as $p) {
  $fecha = $p['fecha'] ?? $fecha1;
  $idVenta = $p['idventa'] ?? null;
  $importe = (float)($p['importe'] ?? 0);
  $tipo    = strtoupper(trim((string)($p['tipo'] ?? '')));

  // Venta asociada
  $codigo = '—'; $cliente = '—';
  if ($idVenta) {
    $v = ControladorVentas::ctrMostrarVentas('id', $idVenta);
    if (is_array($v)) {
      $codigo  = $v['codigo'] ?? '—';
      $cliente = $v['nombre'] ?? ($v['cliente'] ?? '—');
    }
  }

  // Fila
  $pdf->Cell($W['fecha'],   6, $human($fecha), 1, 0, 'C');
  $pdf->Cell($W['codigo'],  6, $codigo,        1, 0, 'C');
  $pdf->Cell($W['cliente'], 6, $cliente,       1, 0, 'L');
  $pdf->Cell($W['importe'], 6, $money($importe), 1, 1, 'R');

  // Resúmenes
  if (isset($sum[$tipo])) { $sum[$tipo]['m'] += $importe; $sum[$tipo]['c']++; }
  $total_m += $importe; $total_c++;
}

$pdf->Ln(2);

// Resumen a la derecha
$startY = $pdf->GetY();
$pdf->SetFont('helvetica','B',10);
$pdf->Cell(0,6,'Recaudación',0,1,'R');
$pdf->SetFont('helvetica','',9);

foreach (['EFECTIVO','TARJETA','CHEQUE','TRANSFERENCIA','CTA.CORRIENTE','VALE'] as $k) {
  $cnt = $sum[$k]['c'] ?? 0;
  $mnt = $sum[$k]['m'] ?? 0.0;

  $pdf->Cell(120,5, "($cnt) $k:", 0, 0, 'R');
  $pdf->Cell(60,5, '$ '.$money($mnt), 0, 1, 'R');
}


$pdf->Ln(1);
$pdf->SetLineWidth(0.2);
$curX = $pdf->GetX(); $curY = $pdf->GetY();
$pdf->Line(130,$curY,200,$curY);

$pdf->SetFont('helvetica','B',11);
$pdf->Cell(120,7,"($total_c) Total:",0,0,'R');
$pdf->Cell(60,7,'$ '.$money($total_m),0,1,'R');



// Salida
$nombre = 'caja_'.$fecha1.(($fecha2!==$fecha1)?'_a_'.$fecha2:'').'.pdf';
$pdf->Output($nombre, 'I');
