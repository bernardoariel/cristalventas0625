<?php

require_once "conexion.php";

class ModeloGastos{

	/*=============================================
	MOSTRAR GASTOS
	=============================================*/

	static public function mdlMostrarGastos($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item order by id desc");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla order by id desc");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	CREAR GASTO
	=============================================*/
	static public function mdlIngresarGasto($tabla, $datos){

		$stmt = Conexion::conectar()->prepare(
			"INSERT INTO $tabla (nombre, importe, medio_pago, fecha_transaccion, id_categoria, id_usuario, obs, activo, obsdel) 
			VALUES (:nombre, :importe, :medio_pago, :fecha_transaccion, :id_categoria, :id_usuario, :obs, :activo, :obsdel)"
		);

		$stmt->bindParam(":nombre", $datos['nombre'], PDO::PARAM_STR);
		$stmt->bindParam(":importe", $datos['importe'], PDO::PARAM_STR);
		$stmt->bindParam(":medio_pago", $datos['medio_pago'], PDO::PARAM_STR);
		$stmt->bindParam(":fecha_transaccion", $datos['fecha_transaccion'], PDO::PARAM_STR);
		$stmt->bindParam(":id_categoria", $datos['id_categoria'], PDO::PARAM_INT);
		$stmt->bindParam(":id_usuario", $datos['id_usuario'], PDO::PARAM_INT);
		$stmt->bindParam(":obs", $datos['obs'], PDO::PARAM_STR);
		$stmt->bindParam(":activo", $datos['activo'], PDO::PARAM_INT);
		$stmt->bindParam(":obsdel", $datos["obsdel"], PDO::PARAM_STR);

		if($stmt->execute()){
			return "ok";
		} else {
			return $stmt->errorInfo();	
		}

		$stmt = null;
	}

	/*=============================================
	ACTUALIZAR GASTO
	=============================================*/

	static public function mdlActualizarGasto($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre, importe = :importe, medio_pago = :medio_pago, fecha_transaccion = :fecha_transaccion, id_categoria = :id_categoria, obs = :obs WHERE id = :id");

		$stmt -> bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt -> bindParam(":importe", $datos["importe"], PDO::PARAM_STR);
		$stmt -> bindParam(":medio_pago", $datos["medio_pago"], PDO::PARAM_STR);
		$stmt -> bindParam(":fecha_transaccion", $datos["fecha_transaccion"], PDO::PARAM_STR);
		$stmt -> bindParam(":id_categoria", $datos["id_categoria"], PDO::PARAM_INT);
		$stmt -> bindParam(":obs", $datos["obs"], PDO::PARAM_STR);
		$stmt -> bindParam(":id", $datos["id"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return $stmt->errorInfo();	
		
		}

		$stmt = null;

	}

	/*=============================================
	EDITAR GASTO
	=============================================*/

	static public function mdlEditarGasto($tabla, $datos){
		
		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre, importe = :importe, medio_pago = :medio_pago, fecha_transaccion = :fecha_transaccion, id_categoria = :id_categoria, obs = :obs WHERE id = :id");

		$stmt -> bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt -> bindParam(":importe", $datos["importe"], PDO::PARAM_STR);
		$stmt -> bindParam(":medio_pago", $datos["medio_pago"], PDO::PARAM_STR);
		$stmt -> bindParam(":fecha_transaccion", $datos["fecha_transaccion"], PDO::PARAM_STR);
		$stmt -> bindParam(":id_categoria", $datos["id_categoria"], PDO::PARAM_INT);
		$stmt -> bindParam(":obs", $datos["obs"], PDO::PARAM_STR);
		$stmt -> bindParam(":id", $datos["id"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return $stmt->errorInfo();	
		
		}

		$stmt = null;

	}

	/*=============================================
	BORRAR GASTO
	=============================================*/

	static public function mdlBorrarGasto($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	BACKUP GASTO
	=============================================*/

	static public function mdlbKGasto($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(`tabla`,`tipo`,`datos`,`usuario`) VALUES
					 (:tabla,:tipo,:datos,:usuario)");

		$stmt->bindParam(":tabla", $datos["tabla"], PDO::PARAM_STR);
		$stmt->bindParam(":tipo", $datos["tipo"], PDO::PARAM_STR);
		$stmt->bindParam(":datos", $datos["datos"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);
	   
		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	RANGO FECHAS GASTOS
	=============================================*/
	static public function mdlRangoFechasGastos($tabla, $fechaInicial, $fechaFinal, $categoria = null){
		if ($categoria) {
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE DATE(fecha_transaccion) BETWEEN :fechaInicial AND :fechaFinal AND id_categoria = :categoria ORDER BY id DESC");
			$stmt->bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
			$stmt->bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);
			$stmt->bindParam(":categoria", $categoria, PDO::PARAM_INT);
		} else {
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE DATE(fecha_transaccion) BETWEEN :fechaInicial AND :fechaFinal ORDER BY id DESC");
			$stmt->bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
			$stmt->bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);
		}
		$stmt->execute();
		return $stmt->fetchAll();
		$stmt = null;
	}

	/*=============================================
	SUMA DE GASTOS POR RANGO DE FECHAS
	=============================================*/
	static public function mdlSumaGastosRango($tabla, $fechaInicial, $fechaFinal, $categoria = null){
		if ($categoria) {
			$stmt = Conexion::conectar()->prepare("SELECT SUM(importe) as total FROM $tabla WHERE DATE(fecha_transaccion) BETWEEN :fechaInicial AND :fechaFinal AND id_categoria = :categoria");
			$stmt->bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
			$stmt->bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);
			$stmt->bindParam(":categoria", $categoria, PDO::PARAM_INT);
		} else {
			$stmt = Conexion::conectar()->prepare("SELECT SUM(importe) as total FROM $tabla WHERE DATE(fecha_transaccion) BETWEEN :fechaInicial AND :fechaFinal");
			$stmt->bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
			$stmt->bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);
		}
		$stmt->execute();
		return $stmt->fetch()["total"] ?? 0;
	}

	/*=============================================
	SUMA DE GASTOS DEL MES
	=============================================*/
	static public function mdlSumaGastosMes($tabla, $anio, $mes, $categoria = null){
		if ($categoria) {
			$stmt = Conexion::conectar()->prepare("SELECT SUM(importe) as total FROM $tabla WHERE YEAR(fecha_transaccion) = :anio AND MONTH(fecha_transaccion) = :mes AND id_categoria = :categoria");
			$stmt->bindParam(":anio", $anio, PDO::PARAM_INT);
			$stmt->bindParam(":mes", $mes, PDO::PARAM_INT);
			$stmt->bindParam(":categoria", $categoria, PDO::PARAM_INT);
		} else {
			$stmt = Conexion::conectar()->prepare("SELECT SUM(importe) as total FROM $tabla WHERE YEAR(fecha_transaccion) = :anio AND MONTH(fecha_transaccion) = :mes");
			$stmt->bindParam(":anio", $anio, PDO::PARAM_INT);
			$stmt->bindParam(":mes", $mes, PDO::PARAM_INT);
		}
		$stmt->execute();
		return $stmt->fetch()["total"] ?? 0;
	}

	/*=============================================
	SUMAR GASTOS POR DÍA
	=============================================*/
	static public function mdlSumaGastosDia($tabla, $fecha, $categoria = null){
		if ($categoria) {
			$stmt = Conexion::conectar()->prepare("SELECT SUM(importe) as total FROM $tabla WHERE DATE(fecha_transaccion) = :fecha AND id_categoria = :categoria");
			$stmt->bindParam(":fecha", $fecha, PDO::PARAM_STR);
			$stmt->bindParam(":categoria", $categoria, PDO::PARAM_INT);
		} else {
			$stmt = Conexion::conectar()->prepare("SELECT SUM(importe) as total FROM $tabla WHERE DATE(fecha_transaccion) = :fecha");
			$stmt->bindParam(":fecha", $fecha, PDO::PARAM_STR);
		}
		$stmt->execute();
		return $stmt->fetch()["total"] ?? 0;
	}

	/*=============================================
	INSERTAR MOVIMIENTO CAJA
	=============================================*/
	static public function mdlIngresarMovimientoCaja($tabla, $datos){
		
		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (fecha, tipo, monto, concepto) VALUES (:fecha, :tipo, :monto, :concepto)");

		$stmt->bindParam(":fecha", $datos['fecha'], PDO::PARAM_STR);
		$stmt->bindParam(":tipo", $datos['tipo'], PDO::PARAM_STR);
		$stmt->bindParam(":monto", $datos['monto'], PDO::PARAM_STR);
		$stmt->bindParam(":concepto", $datos['concepto'], PDO::PARAM_STR);

		if($stmt->execute()){
			return "ok";
		} else {
			return $stmt->errorInfo();	
		}

		$stmt = null;
	}

}

