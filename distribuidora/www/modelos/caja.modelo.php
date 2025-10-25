<?php

require_once "conexion.php";

class ModeloCaja{

	/*=============================================
	MOSTRAR CAJA
	=============================================*/

	static public function mdlMostrarCaja($tabla, $item, $valor){

		if($item != null){
		
			$stmt = Conexion::conectar()->prepare("SELECT * FROM caja WHERE fecha like '%$valor%' order by id desc");
			
			
			$stmt -> execute();

			return $stmt -> fetchAll();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla order by id desc limit 15");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

	

		$stmt = null;

	}

	/*=============================================
	MOSTRAR CAJA POR RANGO DE FECHAS
	=============================================*/

	static public function mdlRangoFechasCaja($tabla, $fechaInicial, $fechaFinal){

		if($fechaInicial == null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");

			$stmt -> execute();

			return $stmt -> fetchAll();	

		}else if($fechaInicial == $fechaFinal){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha like '%$fechaFinal%'");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}else{

			$fechaActual = new DateTime();
			$fechaActual ->add(new DateInterval("P1D"));
			$fechaActualMasUno = $fechaActual->format("Y-m-d");

			$fechaFinal2 = new DateTime($fechaFinal);
			$fechaFinal2 ->add(new DateInterval("P1D"));
			$fechaFinalMasUno = $fechaFinal2->format("Y-m-d");

			if($fechaFinalMasUno == $fechaActualMasUno){

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinalMasUno'");

			}else{

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinal'");

			}
			
			$stmt -> execute();

			return $stmt -> fetchAll();		

		}

	}

	/*=============================================
	CREAR CATEGORIA
	=============================================*/

	static public function mdlIngresarCaja($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(fecha,efectivo,tarjeta,cheque,transferencia,cuenta_corriente,vale) VALUES (:fecha,:efectivo,:tarjeta,:cheque,:transferencia,:cuenta_corriente,:vale)");

		$stmt->bindParam(":fecha", $datos['fecha'], PDO::PARAM_STR);
		$stmt->bindParam(":efectivo", $datos['efectivo'], PDO::PARAM_STR);
		$stmt->bindParam(":tarjeta", $datos['tarjeta'], PDO::PARAM_STR);
		$stmt->bindParam(":cheque", $datos['cheque'], PDO::PARAM_STR);
		$stmt->bindParam(":transferencia", $datos['transferencia'], PDO::PARAM_STR);
		$stmt->bindParam(":cuenta_corriente", $datos['cuenta_corriente'], PDO::PARAM_STR);
		$stmt->bindParam(":vale", $datos['vale'], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	EDiTAR CATEGORIA
	=============================================*/

	static public function mdlEditarCaja($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET efectivo = :efectivo,tarjeta = :tarjeta,
			cheque = :cheque,transferencia = :transferencia, cuenta_corriente =:cuenta_corriente, vale =:vale WHERE fecha = :fecha");

		$stmt->bindParam(":fecha", $datos['fecha'], PDO::PARAM_STR);
		$stmt->bindParam(":efectivo", $datos['efectivo'], PDO::PARAM_STR);
		$stmt->bindParam(":tarjeta", $datos['tarjeta'], PDO::PARAM_STR);
		$stmt->bindParam(":cheque", $datos['cheque'], PDO::PARAM_STR);
		$stmt->bindParam(":transferencia", $datos['transferencia'], PDO::PARAM_STR);
		$stmt->bindParam(":cuenta_corriente", $datos['cuenta_corriente'], PDO::PARAM_STR);
		$stmt->bindParam(":vale", $datos['vale'], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	
}

/*=============================================
  NUEVO: MODELO DE MOVIMIENTOS DE CAJA
=============================================*/
class ModeloCajaMovimientos {

  /*=============================================
  CREAR MOVIMIENTO (INGRESO o EGRESO)
  =============================================*/
  static public function mdlRegistrarMovimiento($datos) {

    $pdo = Conexion::conectar();

    $stmt = $pdo->prepare("
      INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
      VALUES (:fecha, :tipo, :monto, :concepto)
    ");

    $stmt->bindParam(":fecha", $datos["fecha"], PDO::PARAM_STR);
    $stmt->bindParam(":tipo", $datos["tipo"], PDO::PARAM_STR);
    $stmt->bindParam(":monto", $datos["monto"], PDO::PARAM_STR);
    $stmt->bindParam(":concepto", $datos["concepto"], PDO::PARAM_STR);

    if($stmt->execute()){
      return "ok";
    }else{
      return "error";
    }

    $stmt = null;
  }

  /*=============================================
  OBTENER TODOS LOS MOVIMIENTOS
  =============================================*/
  static public function mdlMostrarMovimientos() {

    $pdo = Conexion::conectar();
    $stmt = $pdo->prepare("SELECT * FROM caja_movimientos ORDER BY fecha DESC, id DESC");
    $stmt->execute();

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  /*=============================================
  OBTENER SALDO ACTUAL DE EFECTIVO
  =============================================*/
  static public function mdlSaldoActual() {

    $pdo = Conexion::conectar();
    $stmt = $pdo->prepare("
      SELECT 
        COALESCE(SUM(CASE WHEN tipo='INGRESO' THEN monto ELSE -monto END),0) AS saldo
      FROM caja_movimientos
    ");
    $stmt->execute();

    return $stmt->fetch(PDO::FETCH_ASSOC)["saldo"];
  }

  /*=============================================
  CIERRE DIARIO (fecha, ingresos, egresos, neto, saldo acumulado)
  =============================================*/
  static public function mdlCierreDiario() {

    $pdo = Conexion::conectar();

    // agrupamos por día
    $stmt = $pdo->prepare("
      SELECT DATE(fecha) AS fecha,
             SUM(CASE WHEN tipo='INGRESO' THEN monto ELSE 0 END) AS ingresos,
             SUM(CASE WHEN tipo='EGRESO' THEN monto ELSE 0 END) AS egresos,
             SUM(CASE WHEN tipo='INGRESO' THEN monto ELSE -monto END) AS neto
      FROM caja_movimientos
      GROUP BY DATE(fecha)
      ORDER BY fecha ASC
    ");
    $stmt->execute();
    $movimientos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // acumulamos saldo
    $saldo = 0;
    foreach ($movimientos as &$m) {
      $saldo += $m["neto"];
      $m["saldo_cierre"] = $saldo;
    }

    return $movimientos;
  }
  
  /* === NUEVO: listar por rango === */
  static public function mdlMovimientosRango($fi, $ff) {
    $pdo = Conexion::conectar();

    if ($fi && $ff) {
      $stmt = $pdo->prepare("
        SELECT * 
        FROM caja_movimientos
        WHERE DATE(fecha) BETWEEN :fi AND :ff
        ORDER BY fecha DESC, id DESC
      ");
      $stmt->bindParam(':fi', $fi);
      $stmt->bindParam(':ff', $ff);
    } else { // hoy por defecto
      $hoy = date('Y-m-d');
      $stmt = $pdo->prepare("
        SELECT * 
        FROM caja_movimientos
        WHERE DATE(fecha) = :hoy
        ORDER BY fecha DESC, id DESC
      ");
      $stmt->bindParam(':hoy', $hoy);
    }

    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  /* === NUEVO: totales por rango === */
  static public function mdlTotalesRango($fi, $ff) {
    $pdo = Conexion::conectar();
    $sql = "
      SELECT
        COALESCE(SUM(CASE WHEN tipo='INGRESO' THEN monto END),0) AS ingresos,
        COALESCE(SUM(CASE WHEN tipo='EGRESO'  THEN monto END),0) AS egresos,
        COALESCE(SUM(CASE WHEN tipo='INGRESO' THEN monto ELSE -monto END),0) AS neto
      FROM caja_movimientos
      WHERE DATE(fecha) BETWEEN :fi AND :ff
    ";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':fi', $fi);
    $stmt->bindParam(':ff', $ff);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }

  /* === NUEVO: totales día === */
  static public function mdlTotalesDia($fecha) {
    return self::mdlTotalesRango($fecha, $fecha);
  }

  /* === NUEVO: totales mes === */
  static public function mdlTotalesMes($anio, $mes) {
    $fi = sprintf('%04d-%02d-01', $anio, $mes);
    $ff = date('Y-m-t', strtotime($fi));
    return self::mdlTotalesRango($fi, $ff);
  }
}
