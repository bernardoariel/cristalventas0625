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

$venta = ControladorVentas::ctrMostrarVentas("codigo", $codigo);
if (!$venta || !is_array($venta)) {
  $t = new TicketTemplate($EMPRESA, ['width'=>55,'height'=>100]);
  $t->renderAuto(function(TicketTemplate $t) use($codigo) {
    $t->header('Ticket de Venta', "N° $codigo");
    $t->info(['Estado' => 'Venta no encontrada']);
    $t->footer('Consulte al administrador');
  });
  $t->output("venta_$codigo.pdf","I");
  exit;
}

$clienteDatos = ['Cliente' => '—'];
if (!empty($venta['id_cliente'])) {
  $cli = ControladorClientes::ctrMostrarClientes("id", $venta['id_cliente']);
  if ($cli) $clienteDatos['Cliente'] = $cli['nombre'] ?? $cli['razon_social'] ?? 'Cliente';
}



// ---------- Ítems (compactos) ----------
$items = [];
$total = 0.0;

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
if (!$items) {
  $m = (float)($venta['total'] ?? 0);
  $items = [['desc'=>'Sin detalle', 'cant'=>1, 'total'=>$m]];
}
// ---------- Pagos (desde JSON metodo_pago) ----------
$pagosRows = [];
if (!empty($venta['metodo_pago'])) {
  $arr = is_array($venta['metodo_pago']) ? $venta['metodo_pago'] : json_decode($venta['metodo_pago'], true);
  if (is_array($arr)) {
    foreach ($arr as $p) {
      $pagosRows[] = [
        'tipo'    => strtoupper((string)($p['tipo'] ?? 'PAGO')),
        'importe' => round((float)($p['importe'] ?? 0), 2),
      ];
    }
  }
}


$t = new TicketTemplate($EMPRESA, ['width'=>55,'height'=>240]);
$t->renderAuto(function(TicketTemplate $t) use($codigo,$clienteDatos,$items,$pagosRows,$venta){
  $sub = "N° $codigo  -  ".date('d/m/Y H:i');

  $t->header('Ticket de Venta', $sub);
  $t->noFiscal();

  $t->info($clienteDatos);        // "Cliente: ..."
$suma = $t->itemsTable($items, [
  'font' => 'helvetica',
  'fs' => 8,
  'lh' => 4.0,
  'desc_max_lines' => 2,
  'w' => ['cant'=>8, 'desc'=>30, 'imp'=>12],
]);
$totalPagado = array_sum(array_map(fn($p)=> (float)$p['importe'], $pagosRows));
$t->totals($totalPagado, null);

  if ($pagosRows) $t->payBreakdown($pagosRows); // lista EFECTIVO, TARJETA, etc.

  $t->pushToBottom(10);
  $t->footer('¡Gracias por elegirnos!');
}, 90, 16);
                           // minHeight=90mm, extraBottom=1mm

$t->output("venta_$codigo.pdf","I");
