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

