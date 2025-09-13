<?php

class ControladorCaja{

	/*=============================================
	MOSTRAR CAJA
	=============================================*/

	static public function ctrMostrarCaja($item, $valor){

		$tabla = "caja";

		$respuesta = ModeloCaja::mdlMostrarCaja($tabla, $item, $valor);

		return $respuesta;
	
	}

	/*=============================================
	MOSTRAR CAJA POR RANGO DE FECHAS
	=============================================*/

	static public function ctrRangoFechasCaja($fechaInicial, $fechaFinal){

		$tabla = "caja";

		$respuesta = ModeloCaja::mdlRangoFechasCaja($tabla, $fechaInicial, $fechaFinal);

		return $respuesta;
	
	}

	/*=============================================
	INGRESAR CAJA
	=============================================*/

	static public function ctrIngresarCaja($item, $datos){

		$tabla = "caja";

		$respuesta = ModeloCaja::mdlIngresarCaja($tabla,$datos);

		return $respuesta;
	
	}

	/*=============================================
	EDITAR CAJA
	=============================================*/

	static public function ctrEditarCaja($item, $datos){

		$tabla = "caja";

		$respuesta = ModeloCaja::mdlEditarCaja($tabla,$datos);

		return $respuesta;
	
	}


}
