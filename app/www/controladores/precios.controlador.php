<?php

class ControladorPrecios{

	/*=============================================
	VALOR DEL PRECIO PORCENTAJE
	=============================================*/

	static public function ctrValorPorcentajePrecio($item, $valor){
		

		$tabla = "precios";

		$respuesta = ModeloPrecios::mdlValorPorcentajePrecio($tabla, $item, $valor);
		
		return $respuesta;

	}


	/*=============================================
	ACTUALIZAR PRECIOS
	=============================================*/
	static public function ctrActualizarPrecio(){

		if(isset($_POST['tipodeAccion'])){

			$tabla = "productos";
			$respuesta = null;

			$rubro = $_POST['rubro'];

			if($rubro === "TODOS"){//PARA TODOS LOS RUBROS

				$item=null;
				$valor=null;
				$orden = "id";
	        	$productos = ControladorProductos::ctrMostrarProductos($item, $valor, $orden);

			}else{//PARA UN SOLO RUBRO
				
				$item="id_categoria";
				$valor=$rubro;
				$orden = "id";
	        	$productos = ControladorProductos::ctrMostrarProductosxRubro($item, $valor, $orden);
			}

			$productosActualizados = 0;
        	foreach ($productos as $key => $value) {
	        	if($_POST['tipodeAccion']=="AUMENTO"){
	        		$nuevoPrecio = $value['precio_venta']+($value['precio_venta']*$_POST['porcentaje'])/100;
	        		$nuevoPrecio =trim(round($nuevoPrecio,2));
	        	}else{
	        		$nuevoPrecio = $value['precio_venta']-($value['precio_venta']*$_POST['porcentaje'])/100;
	        		$nuevoPrecio =trim(round($nuevoPrecio,2));
				}
				$datos = array("id"=>$value['id'], "precio_venta"=>$nuevoPrecio);
	        	$respuesta = ModeloPrecios::mdlActualizarPrecioPorcentaje($tabla, $datos);
			if($respuesta == "ok"){
					$productosActualizados++;
				}
			}

			// Siempre registrar el aumento
			$nombre = "SIN NOMBRE"; // Valor por defecto por si falla la busqueda de categoria
			if($rubro === "TODOS"){
				$nombre = "TODOS";
			} else {
					$item = "id";
		        $valor = $rubro;
		        // El orden no se usa en ctrMostrarCategorias
			        $categorias = ControladorCategorias::ctrMostrarCategorias($item, $valor);
		        if ($categorias && isset($categorias['categoria'])) {
		            $nombre = $categorias['categoria'];
		        }
				}
				
				$fecha = date('Y-m-d');
				$tabla="modificacion_precios";
	        	$datos = array("fecha"=>$fecha,
	        				   "accion"=>$_POST['tipodeAccion'],
	        				   "nombre"=>$nombre,
	        				   "porcentaje"=>$_POST['porcentaje'],
	        				   "usuario"=>$_SESSION['usuario']);
			ModeloPrecios::mdlModificacionPrecios($tabla, $datos);

	        	$tabla ="productos";
			// Ahora usamos la variable $rubro correcta que viene del POST
				$datos='[{"id":"todos",
				  "rubro":"'.$rubro.'",
				  "accion":"'.$_POST['tipodeAccion'].'",
				  "porcentaje":"'.$_POST['porcentaje'].'"}]';

				ControladorPrecios::ctrbKPrecios($tabla,$datos);

			if($productosActualizados > 0){
					echo'<script>
					swal({
						  type: "success",
						  title: "Los precios han sido actualizados correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {
						window.location = "actualizar-precios";
						}
					})
				</script>';
			}else{
				echo'<script>
				swal({
				  type: "info",
				  title: "No se encontraron productos para actualizar en este rubro.", // Mensaje más específico
				  showConfirmButton: true,
				  confirmButtonText: "Cerrar"
				  }).then(function(result){
						if (result.value) {
									window.location = "actualizar-precios";
									}
								})
					</script>';
			}
				}
	}

	/*=============================================
	MOSTRAR 
	=============================================*/

	static public function ctrMostrarModificacionPrecios($item, $valor){
		

		$tabla = "modificacion_precios";

		$respuesta = ModeloPrecios::mdlMostrarModificacionPrecios($tabla);
		
		return $respuesta;

	}

	/*=============================================
	MOSTRAR 
	=============================================*/

	// static public function ctrActualizarPorcentaje(){
		
	// 	if(isset($_POST['nuevoPorcentaje'])){
				
	// 			echo 'hla';
	// 		$item="porcentaje";
	// 		$valor=$_POST['nuevoPorcentaje'];
	// 		$tabla = "precios";

	// 		$respuesta = ModeloPrecios::mdlActualizarPorcentaje($tabla,$item,$valor);
			
			// echo'<script>

			// 		swal({
			// 			  type: "success",
			// 			  title: "El porcentaje se actualizo correctamente",
			// 			  showConfirmButton: true,
			// 			  confirmButtonText: "Cerrar"
			// 			  }).then(function(result){
			// 						if (result.value) {

			// 						window.location = "actualizar-precios";

			// 						}
			// 					})

			// 		</script>';

				
		// }

	// }

	static public function ctrbKPrecios($tabla, $valor){

		#TRAEMOS LOS DATOS DE IDESCRIBANO
		
		 $datos = array("tabla"=>$tabla,
	   				    "tipo"=>'ACTUALIZACION',
			            "datos"=>$valor,
			        	"usuario"=>$_SESSION['nombre']);
        $tabla = "backup";

        $respuesta = ModeloPrecios::mdlbKPrecios($tabla, $datos);

	}
}
