<?php

require_once "../controladores/ventas.controlador.php";
require_once "../modelos/ventas.modelo.php";

class AjaxCambiarVendedor{

	/*=============================================
	CAMBIAR VENDEDOR DE UNA VENTA
	=============================================*/	

	public $idVenta;
	public $nuevoVendedor;

	public function ajaxCambiarVendedor(){

		$item = "id";
		$valor = $this->idVenta;
		$nuevoVendedor = $this->nuevoVendedor;

		$respuesta = ModeloVentas::mdlCambiarVendedorVenta($item, $valor, $nuevoVendedor);

		echo json_encode($respuesta);

	}

}

/*=============================================
CAMBIAR VENDEDOR DE UNA VENTA
=============================================*/	

if(isset($_POST["idVenta"])){

	$cambiarVendedor = new AjaxCambiarVendedor();
	$cambiarVendedor -> idVenta = $_POST["idVenta"];
	$cambiarVendedor -> nuevoVendedor = $_POST["nuevoVendedor"];
	$cambiarVendedor -> ajaxCambiarVendedor();

}