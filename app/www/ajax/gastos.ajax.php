<?php

require_once "../controladores/gastos.controlador.php";
require_once "../modelos/gastos.modelo.php";

class AjaxGastos{

	/*=============================================
	EDITAR GASTO
	=============================================*/	

	public $idGasto;

	public function ajaxEditarGasto(){

		$item = "id";
		$valor = $this->idGasto;

		$respuesta = ControladorGastos::ctrMostrarGastos($item, $valor);

		echo json_encode($respuesta);

	}

}

/*=============================================
EDITAR GASTO
=============================================*/	

if(isset($_POST["idGasto"])){

	$editar = new AjaxGastos();
	$editar -> idGasto = $_POST["idGasto"];
	$editar -> ajaxEditarGasto();

}
