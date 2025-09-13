<?php

require_once "../controladores/productos.controlador.php";
require_once "../modelos/productos.modelo.php";

if (isset($_POST["valorBusqueda"])) {
    $valorBusqueda = $_POST["valorBusqueda"];
    $item = "codigo";
    $valor = $valorBusqueda;

    $respuesta = ControladorProductos::ctrMostrarProductos($item, $valor, null);

    if ($respuesta) {
        $nombre = isset($respuesta["nombre"]) ? htmlspecialchars($respuesta["nombre"]) : "Nombre no disponible";
        $codigo = isset($respuesta["codigo"]) ? htmlspecialchars($respuesta["codigo"]) : "Código no disponible";
        $descripcion = isset($respuesta["descripcion"]) ? htmlspecialchars($respuesta["descripcion"]) : "Descripcion no disponible";
        $precio = isset($respuesta["precio_venta"]) ? htmlspecialchars($respuesta["precio_venta"]) : "Precio no disponible";
        $stock = isset($respuesta["stock"]) ? (int)$respuesta["stock"] : 0;

        echo '<div class="card mb-3">';
        echo '<div class="card-body">';
        echo '<h2 class="card-title">' . $nombre . '</h2>';
        echo '<h2 class="card-desc">' . $descripcion . '</h2>';
        echo '<p class="card-subtitle mb-2 text-muted"><i>' . $codigo . '</i></p>';
        echo '<h1 class="card-precio">$' . $precio . '</h1>';

        if ($stock > 1) {
            echo '<p class="card-text text-success text-uppercase animate__animated animate__pulse">Quedan ' . $stock . ' unidades.</p>';
        } elseif ($stock == 1) {
            echo '<p class="card-text text-warning text-uppercase animate__animated animate__pulse">¡¡¡ Apúrate a comprarlo es el último !!!</p>';
        } else {
            echo '<p class="card-text text-danger text-uppercase animate__animated animate__pulse">No encontramos ningún artículo en stock, consulte a la Vendedora.</p>';
        }

        echo '</div>';
        echo '</div>';
    } else {
        echo '<div class="alert alert-danger" role="alert">Producto no encontrado</div>';
    }
}
?>
