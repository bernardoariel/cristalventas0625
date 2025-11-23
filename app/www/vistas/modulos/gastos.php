<?php

require_once "controladores/gastos.controlador.php";
require_once "controladores/categorias.controlador.php";
require_once "controladores/usuarios.controlador.php";

require_once "modelos/gastos.modelo.php";
require_once "modelos/categorias.modelo.php";
require_once "modelos/usuarios.modelo.php";

// Obtener totales para las cajas
if(isset($_GET["fechaInicial"]) && isset($_GET["fechaFinal"])){
    $fechaInicial = $_GET["fechaInicial"];
    $fechaFinal = $_GET["fechaFinal"];
} else {
    $fechaInicial = date('Y-m-d');
    $fechaFinal = date('Y-m-d');
}
$categoria = isset($_GET["categoria"]) ? $_GET["categoria"] : null;
$totalRango = ControladorGastos::ctrSumaGastosRango($fechaInicial, $fechaFinal, $categoria);
$anio = date('Y', strtotime($fechaFinal));
$mes = date('m', strtotime($fechaFinal));
$totalMes = ControladorGastos::ctrSumaGastosMes($anio, $mes, $categoria);
$totalDia = ControladorGastos::ctrSumaGastosDia($fechaFinal, $categoria);


?>

<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar gastos
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar Gastos</li>
    
    </ol>

    <div class="row" style="margin-top: 15px;">
  <div class="col-lg-4">
    <div class="small-box bg-aqua">
      <div class="inner">
        <h3>$<?php echo number_format($totalRango,2); ?></h3>
        <p>Total del rango seleccionado</p>
      </div>
      <div class="icon">
        <i class="fa fa-calculator"></i>
      </div>
    </div>
  </div>
  <div class="col-lg-4">
    <div class="small-box bg-green">
      <div class="inner">
        <h3>$<?php echo number_format($totalMes,2); ?></h3>
        <p>Total del mes</p>
      </div>
      <div class="icon">
        <i class="fa fa-calendar"></i>
      </div>
    </div>
  </div>
  <div class="col-lg-4">
    <div class="small-box bg-yellow">
      <div class="inner">
        <h3>$<?php echo number_format($totalDia,2); ?></h3>
        <p>Total del día</p>
      </div>
      <div class="icon">
        <i class="fa fa-sun-o"></i>
      </div>
    </div>
  </div>
</div>
  </section>
  

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
        <div class="row" style="margin-top:10px;">
          <div class="col-md-6" style="display:flex;align-items:center;gap:10px;">
            <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarGasto">
              Agregar gasto
            </button>
            <!-- <button type="button" class="btn btn-warning" id="btnExportar">
              <i class="fa fa-file-excel-o"></i> Exportar
            </button> -->
          </div>
          <div class="col-md-6" style="display:flex;align-items:center;justify-content:flex-end;gap:10px;">
            
            <div style="width:220px;">
              <button type="button" class="btn btn-default btn-block" id="daterange-btn-gastos">
                <span id="reportrange-gastos">
                  <i class="fa fa-calendar"></i> Hoy
                </span>
                <i class="fa fa-caret-down"></i>
              </button>
            </div>
            <div style="width:180px;">
              <select class="form-control input-sm" id="filtroCategoria">
                <option value="">Todas las categorías</option>
                <?php
                  $categorias = ControladorCategorias::ctrMostrarCategorias(null, null);
                  $categoriaSeleccionada = isset($_GET["categoria"]) ? $_GET["categoria"] : '';
                  foreach ($categorias as $categoria) {
                    $selected = ($categoriaSeleccionada == $categoria["id"]) ? 'selected' : '';
                    echo '<option value="'.$categoria["id"].'" '.$selected.'>'.$categoria["categoria"].'</option>';
                  }
                ?>
              </select>
            </div>
            <button type="button" class="btn btn-info" id="btnLimpiar">
              <i class="fa fa-refresh"></i> Limpiar
            </button>
          </div>
        </div>
      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas" id="tablaGastos" width="100%">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Nombre</th>
           <th>Importe</th>
           <th>Fecha Transacción</th>
           <th>Categoría</th>
           <th>Método de Pago</th>
           <th>Usuario</th>
           <th>Observaciones</th>
           <th style="width:100px">Acciones</th>

         </tr> 

        </thead>

        <tbody>

        <?php
          // FILTRO POR FECHA Y CATEGORÍA: USAR GET SI EXISTE
          if(isset($_GET["fechaInicial"]) && isset($_GET["fechaFinal"])){
              $fechaInicial = $_GET["fechaInicial"];
              $fechaFinal = $_GET["fechaFinal"];
          } else {
              $fechaInicial = date('Y-m-d');
              $fechaFinal = date('Y-m-d');
          }
          $categoria = isset($_GET["categoria"]) ? $_GET["categoria"] : null;
          $gastos = ControladorGastos::ctrRangoFechasGastos($fechaInicial, $fechaFinal, $categoria);

          if($gastos) {
            foreach ($gastos as $key => $value) {
             
              echo ' <tr>

                      <td>'.($key+1).'</td>

                      <td class="text-uppercase">'.$value["nombre"].'</td>';
              
               echo   '<td>$ '.number_format($value["importe"], 2).'</td>';
               
               echo   '<td>'.date('d/m/Y', strtotime($value["fecha_transaccion"])).'</td>';
               
               // Obtener nombre de categoría
               $categoria = ControladorCategorias::ctrMostrarCategorias("id", $value["id_categoria"]);
               echo   '<td>'.($categoria ? $categoria["categoria"] : 'Sin categoría').'</td>';
               
               // Mostrar método de pago
               echo   '<td>'.(isset($value["medio_pago"]) ? $value["medio_pago"] : 'EFECTIVO').'</td>';
               
               // Obtener nombre de usuario
               $usuario = ControladorUsuarios::ctrMostrarUsuarios("id", $value["id_usuario"]);
               echo   '<td>'.($usuario ? $usuario["nombre"] : 'Usuario no encontrado').'</td>';
               
               echo   '<td>'.($value["obs"] ? $value["obs"] : 'Sin observaciones').'</td>';
             
               echo      '<td>

                        <div class="btn-group">
                            
                          <button class="btn btn-warning btnEditarGasto" idGasto="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarGasto" title="editar gasto"><i class="fa fa-pencil"></i></button>';

                         

               echo '<button class="btn btn-danger btnEliminarGasto" idGasto="'.$value["id"].'" title="eliminar gasto"><i class="fa fa-times"></i></button></div>  

                      </td>

                    </tr>';
            }
          }

        ?>

        </tbody>

       </table>

      </div>

    </div>

  </section>

</div>

<!--=====================================
MODAL AGREGAR GASTO
======================================-->

<div id="modalAgregarGasto" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">
          
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
          <h4 class="modal-title">Agregar gasto</h4>
          
        </div>
        
        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->
        
        <div class="modal-body">
          
          <div class="box-body">
            
            <!-- CAMPO OCULTO PARA DETECTAR EL ENVÍO -->
            <input type="hidden" name="nuevoGasto" value="1">
            
            <!-- ENTRADA PARA EL NOMBRE -->
            
            <div class="form-group">
              
              <div class="input-group">
                
                <span class="input-group-addon"><i class="fa fa-tag"></i></span> 
                
                <input type="text" class="form-control input-lg" name="nuevoNombre" id="nuevoNombre" placeholder="Ingresar nombre del gasto" required>
                
              </div>
              
            </div>
            
            <!-- ENTRADA PARA EL IMPORTE -->
            
            <div class="form-group">
              
              <div class="input-group">
                
                <span class="input-group-addon"><i class="fa fa-dollar"></i></span> 
                
                <input type="number" step="0.01" class="form-control input-lg" name="nuevoImporte" id="nuevoImporte" placeholder="Ingresar importe" required>
                
              </div>
              
            </div>
            
            <!-- ENTRADA PARA SELECCIONAR EL MÉTODO DE PAGO -->
            
            <div class="form-group">
              
              <div class="input-group">
                
                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span> 
                
                <select class="form-control input-lg" name="nuevoMedioPago" id="nuevoMedioPago" required>
                  
                  <option value="">Seleccionar método de pago</option>
                  <option value="EFECTIVO">EFECTIVO</option>
                  <option value="TARJETA">TARJETA</option>
                  <option value="TRANSFERENCIA">TRANSFERENCIA</option>
                  <option value="CHEQUE">CHEQUE</option>
                  <option value="CTA_CTE">CTA_CTE</option>
                  <option value="VALE">VALE</option>
                  
                </select>
                
              </div>
              
            </div>
            
            <!-- ENTRADA PARA LA FECHA DE TRANSACCIÓN -->
            
            <div class="form-group">
              
              <div class="input-group">
                
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span> 
                
                <input type="date" class="form-control input-lg" name="nuevaFechaTransaccion" id="nuevaFechaTransaccion" value="<?php echo date('Y-m-d'); ?>" required>
                
              </div>
              
            </div>
            
            <!-- ENTRADA PARA SELECCIONAR LA CATEGORÍA -->
            
            <div class="form-group">
              
              <div class="input-group">
                
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 
                
                <select class="form-control input-lg" name="nuevaCategoria" required>
                  
                  <option value="">Seleccionar categoría</option>
                  
                  <?php
                    
                    $categorias = ControladorCategorias::ctrMostrarCategorias(null, null);
                    
                    foreach ($categorias as $categoria) {
                      
                      echo '<option value="'.$categoria["id"].'">'.$categoria["categoria"].'</option>';
                      
                    }
                    
                  ?>
                  
                </select>
                
              </div>
              
            </div>
            
            <!-- ENTRADA PARA LAS OBSERVACIONES -->
            
            <div class="form-group">
              
              <div class="input-group">
                
                <span class="input-group-addon"><i class="fa fa-comment"></i></span> 
                
                <textarea class="form-control input-lg" name="nuevaObservacion" id="nuevaObservacion" placeholder="Observaciones (opcional)" rows="3"></textarea>
                
              </div>
              
            </div>
            
        </div></div>
        
        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar gasto</button>

        </div>

        <?php

          $crearGasto = new ControladorGastos();
          $crearGasto -> ctrCrearGasto();

        ?>

      </form>

    </div>

  </div>

</div>

<!--=====================================
MODAL EDITAR GASTO
======================================-->

<div id="modalEditarGasto" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar gasto</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- CAMPO OCULTO PARA DETECTAR EL ENVÍO -->
            <input type="hidden" name="editarGasto" value="1">

            <!-- ENTRADA PARA EL NOMBRE -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-tag"></i></span> 

                <input type="text" class="form-control input-lg" name="editarNombre" id="editarNombre" required>

                 <input type="hidden" name="idGasto" id="idGasto" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL IMPORTE -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-dollar"></i></span> 

                <input type="number" step="0.01" class="form-control input-lg" name="editarImporte" id="editarImporte" required>

              </div>

            </div>
            
            <!-- ENTRADA PARA SELECCIONAR EL MÉTODO DE PAGO -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span> 

                <select class="form-control input-lg" name="editarMedioPago" id="editarMedioPago" required>
                  
                  <option value="">Seleccionar método de pago</option>
                  <option value="EFECTIVO">EFECTIVO</option>
                  <option value="TARJETA">TARJETA</option>
                  <option value="TRANSFERENCIA">TRANSFERENCIA</option>
                  <option value="CHEQUE">CHEQUE</option>
                  <option value="CTA_CTE">CTA_CTE</option>
                  <option value="VALE">VALE</option>
                  
                </select>

              </div>

            </div>

            <!-- ENTRADA PARA LA FECHA DE TRANSACCIÓN -->

            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span> 

                <input type="date" class="form-control input-lg" name="editarFechaTransaccion" id="editarFechaTransaccion" required>

              </div>

            </div>

            <!-- ENTRADA PARA SELECCIONAR LA CATEGORÍA -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <select class="form-control input-lg" name="editarCategoria" id="editarCategoria" required>

                  <option value="">Seleccionar categoría</option>
                  
                  <?php
                    
                    $categorias = ControladorCategorias::ctrMostrarCategorias(null, null);
                    
                    foreach ($categorias as $categoria) {
                      
                      echo '<option value="'.$categoria["id"].'">'.$categoria["categoria"].'</option>';
                      
                    }
                    
                  ?>

                </select>

              </div>

            </div>
            
            <!-- ENTRADA PARA LAS OBSERVACIONES -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-comment"></i></span> 

                <textarea class="form-control input-lg" name="editarObservacion" id="editarObservacion" placeholder="Observaciones (opcional)" rows="3"></textarea>

              </div>

            </div>
            
        </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar cambios</button>

        </div>

      <?php

          $editarGasto = new ControladorGastos();
          $editarGasto -> ctrEditarGasto();

        ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarGasto = new ControladorGastos();
  $borrarGasto -> ctrBorrarGasto();
 
?>




