<?php
declare(strict_types=1);
ini_set('display_errors','0');
error_reporting(E_ERROR);

require __DIR__.'/_bootstrap.php';
require __DIR__.'/templates/TicketTemplate.php';

require_once __DIR__ . "/../../controladores/ventas.controlador.php";
require_once __DIR__ . "/../../modelos/ventas.modelo.php";
require_once __DIR__ . "/../../controladores/clientes.controlador.php";
require_once __DIR__ . "/../../modelos/clientes.modelo.php";

$codigo = isset($_GET['codigo']) ? trim($_GET['codigo']) : '0001-00000001';
$venta  = ControladorVentas::ctrMostrarVentas("codigo", $codigo);

if (!$venta || !is_array($venta)) {
  $t = new TicketTemplate($EMPRESA, ['width'=>80,'height'=>110]);
  $t->renderAuto(function(TicketTemplate $t) use($codigo) {
    $t->header('RECIBO', "N° $codigo  -  ".date('d/m/Y H:i'));
    $t->info(['Estado' => 'Venta/recibo no encontrado']);
    $t->footer('Consulte al administrador');
  });
  $t->output("recibo_$codigo.pdf","I");
  exit;
}

// Cliente (solo nombre)
$clienteDatos = ['Cliente' => '—'];
if (!empty($venta['id_cliente'])) {
  $cli = ControladorClientes::ctrMostrarClientes("id", $venta['id_cliente']);
  if ($cli) $clienteDatos['Cliente'] = $cli['nombre'] ?? $cli['razon_social'] ?? 'Cliente';
}

// Ítems (para mostrar detalle resumido)
$items = [];
if (!empty($venta['productos'])) {
  $prods = is_array($venta['productos']) ? $venta['productos'] : json_decode($venta['productos'], true);
  if (is_array($prods)) {
    foreach ($prods as $p) {
      $cant = (float)($p['cantidad'] ?? 1);
      $pu   = (float)($p['precio'] ?? $p['precio_unitario'] ?? 0);
      $items[] = [
        'desc'  => $p['descripcion'] ?? $p['descripcion_producto'] ?? 'Ítem',
        'cant'  => $cant,
        'pu'    => $pu,
        'total' => round($cant * $pu, 2),
      ];
    }
  }
}
if (!$items) $items = [['desc'=>'Sin detalle', 'cant'=>1, 'total'=>(float)($venta['total'] ?? 0)]];

// Pagos desde JSON metodo_pago
$pagosRows = [];
$totalPagado = 0.0;
if (!empty($venta['metodo_pago'])) {
  $arr = is_array($venta['metodo_pago']) ? $venta['metodo_pago'] : json_decode($venta['metodo_pago'], true);
  if (is_array($arr)) {
    foreach ($arr as $p) {
      $m = round((float)($p['importe'] ?? 0), 2);
      $pagosRows[] = ['tipo'=>strtoupper((string)($p['tipo'] ?? 'PAGO')), 'importe'=>$m];
      $totalPagado += $m;
    }
  }
}
if (!$pagosRows) { $totalPagado = (float)($venta['total'] ?? 0); $pagosRows = [['tipo'=>'PAGO', 'importe'=>$totalPagado]]; }

$t = new TicketTemplate($EMPRESA, ['width'=>80,'height'=>240]);

$t->renderAuto(function(TicketTemplate $t) use($codigo,$clienteDatos,$items,$pagosRows,$totalPagado){
  // Encabezado
  $t->header('RECIBO', "N° $codigo  -  ".date('d/m/Y H:i'));
  $t->noFiscal();

  // Cliente
  $t->info($clienteDatos);

  // Detalle (estilo tabla tipo Excel)
  $suma = $t->itemsTable($items, [
    'font' => 'helvetica',
    'fs'   => 8,
    'lh'   => 4.0,
    'desc_max_lines' => 2,
    'w' => ['cant'=>12, 'desc'=>42, 'imp'=>18],
  ]);

  // Monto recibido (total pagado) + desglose de pagos
  $t->totals($totalPagado, null);
  $t->payBreakdown($pagosRows);

  // Bloque de firma al pie
  $t->signatureLines(['Firma','Aclaración','DNI'], 20);
}, 90, 24); // minHeight, extraBottom (reserva para el bloque de firma)

$t->output("recibo_$codigo.pdf","I");
