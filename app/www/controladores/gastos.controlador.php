<?php

class ControladorGastos{

	/*=============================================
	MOSTRAR GASTOS
	=============================================*/

	static public function ctrMostrarGastos($item, $valor){

		$tabla = "gastos";

		$respuesta = ModeloGastos::mdlMostrarGastos($tabla, $item, $valor);

		return $respuesta;
	
	}

	/*=============================================
	ACTUALIZAR GASTO
	=============================================*/

	static public function ctrActualizarGasto($datos){
		
		$tabla = "gastos";

		$respuesta = ModeloGastos::mdlActualizarGasto($tabla, $datos);

		return $respuesta;
	}

	/*=============================================
	CREAR GASTO
	=============================================*/

	static public function ctrCrearGasto(){

		if(isset($_POST["nuevoGasto"])){

			if ($_POST["nuevoNombre"]<>null){

				if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ\/.,&*()\[\] ]+$/', $_POST["nuevoNombre"])){

					$tabla = "gastos";

					$datos = array(
						"nombre" => $_POST["nuevoNombre"],
						"importe" => $_POST["nuevoImporte"],
						"fecha_transaccion" => $_POST["nuevaFechaTransaccion"],
						"id_categoria" => $_POST["nuevaCategoria"],
						"id_usuario" => $_SESSION["id"],
						"obs" => $_POST["nuevaObservacion"] ?? '',
						"activo" => 1,
						"obsdel" => $_POST["nuevaObsDel"] ?? '',
						"medio_pago" => $_POST["nuevoMedioPago"] ?? 'EFECTIVO'
					);

					$respuesta = ModeloGastos::mdlIngresarGasto($tabla, $datos);

					if($respuesta == "ok"){

						echo'<script>

						swal({
							  type: "success",
							  title: "El gasto ha sido guardado correctamente",
							  showConfirmButton: true,
							  confirmButtonText: "Cerrar"
							  }).then(function(result){
										if (result.value) {

										window.location = "gastos";

										}
									})

						</script>';

					}

				}else{

					echo'<script>

						swal({
							  type: "error",
							  title: "¡El nombre no puede ir vacío o llevar caracteres especiales!",
							  showConfirmButton: true,
							  confirmButtonText: "Cerrar"
							  }).then(function(result){
								if (result.value) {

								window.location = "gastos";

								}
							})

				  	</script>';

				}
			}		

		}

	}

	/*=============================================
	EDITAR GASTO
	=============================================*/

	static public function ctrEditarGasto(){

		if(isset($_POST["editarGasto"])){

			if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ\/.,&*()\[\] ]+$/', $_POST["editarNombre"])){

				$tabla = "gastos";
				$idGasto = $_POST["idGasto"];
				
				// OBTENEMOS LOS DATOS ORIGINALES DEL GASTO ANTES DE EDITARLO
				$gastoOriginal = ControladorGastos::ctrMostrarGastos("id", $idGasto);
				
				$datos = array(
					"nombre" => $_POST["editarNombre"],
					"importe" => $_POST["editarImporte"],
					"fecha_transaccion" => $_POST["editarFechaTransaccion"],
					"id_categoria" => $_POST["editarCategoria"],
					"obs" => $_POST["editarObservacion"] ?? '',
					"id" => $idGasto,
					"medio_pago" => $_POST["editarMedioPago"] ?? 'EFECTIVO'
				);

				// LÓGICA PARA MANEJAR LOS CAMBIOS EN EL MÉTODO DE PAGO Y LA CAJA
				if($gastoOriginal){
					$medioPagoOriginal = $gastoOriginal["medio_pago"];
					$importeOriginal = floatval($gastoOriginal["importe"]);
					$medioPagoNuevo = $datos["medio_pago"];
					$importeNuevo = floatval($datos["importe"]);
					
					// CASO 1: Era EFECTIVO y ahora NO es EFECTIVO - Restituir dinero a caja
					if($medioPagoOriginal == "EFECTIVO" && $medioPagoNuevo != "EFECTIVO"){
						$datosMovimiento = array(
							"fecha" => date('Y-m-d H:i:s'),
							"tipo" => "INGRESO",
							"monto" => $importeOriginal,
							"concepto" => "Restitución por cambio de método de pago: " . $gastoOriginal["nombre"] . " (ID " . $idGasto . ")"
						);
						ModeloGastos::mdlIngresarMovimientoCaja("caja_movimientos", $datosMovimiento);
					}
					
					// CASO 2: NO era EFECTIVO y ahora SÍ es EFECTIVO - Descontar dinero de caja
					elseif($medioPagoOriginal != "EFECTIVO" && $medioPagoNuevo == "EFECTIVO"){
						$datosMovimiento = array(
							"fecha" => date('Y-m-d H:i:s'),
							"tipo" => "EGRESO",
							"monto" => $importeNuevo,
							"concepto" => "Descuento por cambio a método efectivo: " . $datos["nombre"] . " (ID " . $idGasto . ")"
						);
						ModeloGastos::mdlIngresarMovimientoCaja("caja_movimientos", $datosMovimiento);
					}
					
					// CASO 3: Era EFECTIVO y sigue siendo EFECTIVO pero cambió el importe
					elseif($medioPagoOriginal == "EFECTIVO" && $medioPagoNuevo == "EFECTIVO" && $importeOriginal != $importeNuevo){
						$diferencia = $importeNuevo - $importeOriginal;
						if($diferencia != 0){
							$datosMovimiento = array(
								"fecha" => date('Y-m-d H:i:s'),
								"tipo" => $diferencia > 0 ? "EGRESO" : "INGRESO",
								"monto" => abs($diferencia),
								"concepto" => "Ajuste por cambio de importe en gasto efectivo: " . $datos["nombre"] . " (ID " . $idGasto . ")"
							);
							ModeloGastos::mdlIngresarMovimientoCaja("caja_movimientos", $datosMovimiento);
						}
					}
				}

				// ControladorGastos::ctrbKGastos($tabla, "id", $_POST["idGasto"], "UPDATE");

				$respuesta = ModeloGastos::mdlEditarGasto($tabla, $datos);

				if($respuesta == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "El gasto ha sido cambiado correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "gastos";

									}
								})

					</script>';

				}


			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡El nombre no puede ir vacío o llevar caracteres especiales!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "gastos";

							}
						})

			  	</script>';

			}

		}

	}

	/*=============================================
	BORRAR GASTO
	=============================================*/

	static public function ctrBorrarGasto(){

		if(isset($_GET["idGasto"])){

			$tabla ="gastos";
			$idGasto = $_GET["idGasto"];
			
			// PRIMERO OBTENEMOS LOS DATOS DEL GASTO ANTES DE BORRARLO
			$gasto = ControladorGastos::ctrMostrarGastos("id", $idGasto);
			
			if($gasto){
				// SI EL GASTO FUE PAGADO CON EFECTIVO, RESTITUIMOS LA CAJA
				if($gasto["medio_pago"] == "EFECTIVO"){
					// Agregamos un movimiento de INGRESO para restituir el dinero
					$datos = array(
						"fecha" => date('Y-m-d H:i:s'),
						"tipo" => "INGRESO", 
						"monto" => $gasto["importe"],
						"concepto" => "Restitución por eliminación de gasto: " . $gasto["nombre"] . " (ID " . $gasto["id"] . ")"
					);
					
					// Insertamos el movimiento en caja_movimientos
					$tablaMovimientos = "caja_movimientos";
					$respuestaMovimiento = ModeloGastos::mdlIngresarMovimientoCaja($tablaMovimientos, $datos);
				}
			}
			
			#ENVIAMOS LOS DATOS PARA BORRAR EL GASTO
			// ControladorGastos::ctrbKGastos($tabla, "id", $_GET["idGasto"], "ELIMINAR");

			$respuesta = ModeloGastos::mdlBorrarGasto($tabla, $idGasto);

			if($respuesta == "ok"){

				echo'<script>

					swal({
						  type: "success",
						  title: "El gasto ha sido borrado correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "gastos";

									}
								})

					</script>';
			}
		 }
		
	}

	static public function ctrbKGastos($tabla, $item, $valor, $tipo){

		#TRAEMOS LOS DATOS DE GASTO
		
		$respuesta = ControladorGastos::ctrMostrarGastos($item, $valor);

		$valor='[{"id":"'.$respuesta["id"].'",
				  "nombre":"'.$respuesta["nombre"].'",
				  "importe":"'.$respuesta["importe"].'",
				  "fecha_transaccion":"'.$respuesta["fecha_transaccion"].'",
				  "id_categoria":"'.$respuesta["id_categoria"].'",
				  "id_usuario":"'.$respuesta["id_usuario"].'",
				  "obs":"'.$respuesta["obs"].'",
				  "activo":"'.$respuesta["activo"].'",
				  "obsdel":"'.$respuesta["obsdel"].'",
				  "fecha":"'.$respuesta["fecha"].'"}]';

        $datos = array(
			"tabla" => "gastos",
	   		"tipo" => $tipo,
			"datos" => $valor,
			"usuario" => $_SESSION['nombre']
		);
        $tabla = "backup";

        $respuesta = ModeloGastos::mdlbKGasto($tabla, $datos);

	}

	/*=============================================
	RANGO FECHAS GASTOS
	=============================================*/
	static public function ctrRangoFechasGastos($fechaInicial, $fechaFinal, $categoria = null){
		$tabla = "gastos";
		$respuesta = ModeloGastos::mdlRangoFechasGastos($tabla, $fechaInicial, $fechaFinal, $categoria);
		return $respuesta;
	}

	/*=============================================
	SUMA DE GASTOS POR RANGO DE FECHAS
	=============================================*/
	static public function ctrSumaGastosRango($fechaInicial, $fechaFinal, $categoria = null){
		$tabla = "gastos";
		return ModeloGastos::mdlSumaGastosRango($tabla, $fechaInicial, $fechaFinal, $categoria);
	}

	/*=============================================
	SUMA DE GASTOS DEL MES
	=============================================*/
	static public function ctrSumaGastosMes($anio, $mes, $categoria = null){
		$tabla = "gastos";
		return ModeloGastos::mdlSumaGastosMes($tabla, $anio, $mes, $categoria);
	}

	/*=============================================
	SUMA DE GASTOS DEL DÍA
	=============================================*/
	static public function ctrSumaGastosDia($fecha, $categoria = null){
		$tabla = "gastos";
		return ModeloGastos::mdlSumaGastosDia($tabla, $fecha, $categoria);
	}

}

