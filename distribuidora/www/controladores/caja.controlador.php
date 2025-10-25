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
/*=============================================
  NUEVO CONTROLADOR: MOVIMIENTOS DE CAJA
=============================================*/
class ControladorCajaMovimientos {

  /*=============================================
  REGISTRAR MOVIMIENTO (INGRESO o EGRESO)
  =============================================*/
  static public function ctrRegistrarMovimiento($tipo, $monto, $concepto){

    $tipo = strtoupper($tipo);
    $monto = floatval($monto);

    // validar datos básicos
    if(!in_array($tipo, ['INGRESO','EGRESO']) || $monto <= 0){
      return "error";
    }

    // validar saldo si es EGRESO
    if($tipo === 'EGRESO'){
      // asumimos que existe ModeloCajaMovimientos::mdlSaldoActual()
      $saldo = ModeloCajaMovimientos::mdlSaldoActual();
      $saldo = floatval($saldo);

      if($monto > $saldo){
        return "saldo_insuficiente"; // respuesta específica para el AJAX
      }
    }

    $datos = [
      "fecha" => date("Y-m-d H:i:s"),
      "tipo" => $tipo,
      "monto" => $monto,
      "concepto" => $concepto
    ];

    $respuesta = ModeloCajaMovimientos::mdlRegistrarMovimiento($datos);
    return $respuesta;
  }

  /*=============================================
  MOSTRAR MOVIMIENTOS
  =============================================*/
  static public function ctrMostrarMovimientos(){

    $respuesta = ModeloCajaMovimientos::mdlMostrarMovimientos();
    return $respuesta;
  }

  /*=============================================
  SALDO ACTUAL DE EFECTIVO
  =============================================*/
  static public function ctrSaldoActual(){

    $respuesta = ModeloCajaMovimientos::mdlSaldoActual();
    return $respuesta;
  }

  /*=============================================
  CIERRE DIARIO
  =============================================*/
  static public function ctrCierreDiario(){

    $respuesta = ModeloCajaMovimientos::mdlCierreDiario();
    return $respuesta;
  }
   /* === NUEVO: listar por rango === */
  static public function ctrMovimientosRango($fi, $ff) {
    return ModeloCajaMovimientos::mdlMovimientosRango($fi, $ff);
  }

  /* === NUEVO: totales por rango/día/mes === */
  static public function ctrTotalesRango($fi, $ff) {
    return ModeloCajaMovimientos::mdlTotalesRango($fi, $ff);
  }

  static public function ctrTotalesDia($fecha) {
    return ModeloCajaMovimientos::mdlTotalesDia($fecha);
  }

  static public function ctrTotalesMes($anio, $mes) {
    return ModeloCajaMovimientos::mdlTotalesMes($anio, $mes);
  }
}
