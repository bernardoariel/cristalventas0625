<?php
declare(strict_types=1);
ini_set('display_errors','0');
error_reporting(E_ERROR);

require __DIR__.'/_bootstrap.php';
require __DIR__.'/templates/TicketTemplate.php';

require_once __DIR__ . "/../../controladores/productos.controlador.php";
require_once __DIR__ . "/../../modelos/productos.modelo.php";

$idItem    = isset($_GET['item']) ? (int)$_GET['item'] : 0;
$producto  = ControladorProductos::ctrMostrarProductos('id', $idItem, 'id');

$t = new TicketTemplate($EMPRESA, ['width'=>55,'height'=>180]);

$t->renderAuto(function (TicketTemplate $t) use ($producto) {
    // Encabezado
    $t->header('CONSULTA DE PRECIO', date('d/m/Y H:i'));
    $t->noFiscal();

    if (!$producto) {
        $t->info(['Producto' => 'No encontrado']);
        return;
    }

    // Ítem único: cant. | Detalle | Importe
    $items = [[
        'cant'  => 1,
        'desc'  => trim(($producto['codigo'] ?? '').' - '.($producto['nombre'] ?? 'Producto')),
        'total' => (float)($producto['precio_venta'] ?? 0),
    ]];

    $t->itemsTable($items, [
        'font' => 'helvetica',
        'fs'   => 9,
        'lh'   => 4.2,
        'desc_max_lines' => 2,
        'w' => ['cant'=>8, 'desc'=>30, 'imp'=>12],
    ]);

    // Footer
    $t->pushToBottom(8);
    $t->footer('Válido por 5 días');
}, 90, 12);

$nombre = 'consulta_precio_'.($producto['codigo'] ?? $idItem).'.pdf';
$t->output($nombre, 'I');
