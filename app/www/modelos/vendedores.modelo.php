<?php

require_once "conexion.php";

class ModeloVendedores{

	/*=============================================
	MOSTRAR VENDEDORES
	=============================================*/

	static public function mdlMostrarVendedores($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item order by id asc");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla order by id asc");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	OBTENER VENTAS POR VENDEDOR EN UN RANGO DE FECHAS
	=============================================*/

	static public function mdlObtenerVentasPorVendedor($fechaInicial, $fechaFinal){

		$stmt = Conexion::conectar()->prepare("SELECT 
				v.id,
				v.nombre,
				COALESCE(SUM(vt.total), 0) as total_ventas,
				COALESCE(COUNT(vt.id), 0) as cantidad_ventas
			FROM vendedores v 
			LEFT JOIN ventas vt ON v.id = COALESCE(vt.id_vendedor_venta, vt.id_vendedor)
				AND DATE(vt.fecha) BETWEEN :fechaInicial AND :fechaFinal
			GROUP BY v.id, v.nombre 
			ORDER BY total_ventas DESC");

		$stmt -> bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
		$stmt -> bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

		$stmt = null;

	}

}

