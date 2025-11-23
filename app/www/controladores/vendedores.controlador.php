<?php

class ControladorVendedores{

	/*=============================================
	MOSTRAR Vendedores
	=============================================*/

	static public function ctrMostrarVendedores($item, $valor){

		$tabla = "vendedores";

		$respuesta = ModeloVendedores::mdlMostrarVendedores($tabla, $item, $valor);

		return $respuesta;
	
	}

	/*=============================================
	OBTENER VENTAS POR VENDEDOR
	=============================================*/

	static public function ctrObtenerVentasPorVendedor($fechaInicial, $fechaFinal){

		$respuesta = ModeloVendedores::mdlObtenerVentasPorVendedor($fechaInicial, $fechaFinal);

		return $respuesta;

	}

}

