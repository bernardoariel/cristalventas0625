<?php

/*=============================================
  =              GENERO LA CAJA                =
  =============================================*/

// Verificar si hay fechas seleccionadas
if(isset($_GET["fechaInicial"])){
  $fechaInicial = $_GET["fechaInicial"];
  $fechaFinal = $_GET["fechaFinal"];
} else {
  $fechaInicial = date('Y-m-d');
  $fechaFinal = date('Y-m-d');
}

/* ====== ASEGURAR CAJA (poner este bloque ac�) ====== */
// Crea caja si no existe para una fecha dada (idempotente)
function asegurarCajaParaFecha(string $fecha): void {
  $existe = ControladorCaja::ctrMostrarCaja('fecha', $fecha);
  if (empty($existe) || (is_array($existe) && count($existe) === 0)) {
    $datos = [
      "fecha"            => $fecha,
      "efectivo"         => 0,
      "tarjeta"          => 0,
      "cheque"           => 0,
      "transferencia"    => 0,
      "cuenta_corriente" => 0,
      "vale"             => 0,
    ];
    ControladorCaja::ctrIngresarCaja('fecha', $datos);
  }
}

// Si hay rango en la URL, asegur� todas las fechas del rango; si no, solo hoy
if (isset($_GET["fechaInicial"], $_GET["fechaFinal"])) {
  $ini = new DateTime($fechaInicial);
  $fin = new DateTime($fechaFinal); 
  $fin->modify('+1 day'); // incluir fecha final
  foreach (new DatePeriod($ini, new DateInterval('P1D'), $fin) as $d) {
    asegurarCajaParaFecha($d->format('Y-m-d'));
  }
} else {
  asegurarCajaParaFecha(date('Y-m-d'));
}
/* ====== /ASEGURAR CAJA ====== */

// Obtener datos de caja por rango de fechas
$caja = ControladorCaja::ctrRangoFechasCaja($fechaInicial, $fechaFinal);

// Calcular totales del rango de fechas
$totalEfectivo = 0;
$totalTarjeta = 0;
$totalCta = 0;
$totalVale = 0;

foreach($caja as $registro){
  $totalEfectivo += $registro['efectivo'];
  $totalTarjeta += $registro['tarjeta'];
  $totalCta += $registro['cuenta_corriente'];
  $totalVale += $registro['vale'];
}

$item = null;
$valor = null;
$orden = "id";

// Obtener total de ventas por rango de fechas
$ventas = ControladorVentas::ctrSumaTotalVentasEntreFechas($fechaInicial, $fechaFinal);
$stockValorizado = ControladorProductos::ctrStockValorizado();

// Obtener ventas por rango de fechas
$ventasCant = ControladorVentas::ctrContarVentasRango($fechaInicial, $fechaFinal);

require_once "controladores/gastos.controlador.php";
require_once "modelos/gastos.modelo.php";
$gastosDia = ControladorGastos::ctrSumaGastosDia(date('Y-m-d'));
?>
<div class="col-lg-6">

 <div class="box box-primary">

  <div class="box-body">
        
    <table class="table table-bordered table-striped dt-responsive tablaProductosInicio tablaProductosInicioCJ" width="100%">
             
      <thead>
       
       <tr>
         
         <th style="width:10px">#</th>
         <th>Nombre</th>
         <th>Descripcion</th>
         <th>Código</th>
         <th>Stock</th> 
         <th>Precio</th>
         <th>##</th>

       </tr> 

      </thead>
    

    </table>

  </div>

 </div>

</div>

<div class="col-lg-6">

 <div class="box box-success">

  <div class="box-header with-border">
    
    <h3 class="box-title">
      Resumen de Caja
      <?php if(isset($_GET["fechaInicial"]) && isset($_GET["fechaFinal"])): ?>
        <small>
          (<?php 
            $fechaIni = new DateTime($_GET["fechaInicial"]);
            $fechaFin = new DateTime($_GET["fechaFinal"]);
            echo $fechaIni->format('d/m/Y') . ' - ' . $fechaFin->format('d/m/Y');
          ?>)
        </small>
      <?php endif; ?>
    </h3>
    
    <div class="box-tools pull-right">
      
      <button type="button" class="btn btn-default" id="daterange-btn-caja" style="margin-left: 10px; background-color: #fff; border: 1px solid #ccc; padding: 6px 12px;">
        <span>
          <?php if(isset($_GET["fechaInicial"]) && isset($_GET["fechaFinal"])): ?>
            <?php 
              $fechaIni = new DateTime($_GET["fechaInicial"]);
              $fechaFin = new DateTime($_GET["fechaFinal"]);
              $hoy = new DateTime();
              
              // Si ambas fechas son hoy, mostrar "Hoy"
              if($fechaIni->format('Y-m-d') == $hoy->format('Y-m-d') && $fechaFin->format('Y-m-d') == $hoy->format('Y-m-d')) {
                echo 'Hoy';
              } else {
                echo $fechaIni->format('d/m/Y') . ' - ' . $fechaFin->format('d/m/Y');
              }
            ?>
          <?php else: ?>
            Hoy
          <?php endif; ?>
        </span>
        
        <i class="fa fa-caret-down"></i>
      </button>

    </div>

  </div>

  <div class="box-body">


      <div class="col-lg-6">

        <div class="small-box bg-red">
          
          <div class="inner">
            
            <h3>$<?php echo number_format($ventas["total"] ?? 0, 2); ?></h3>

            <p>Total de Ventas</p>
          
          </div>
          
          <div class="icon">
            
            <i class="fa fa-line-chart"></i>
          
          </div>
          
          <a href="ventas" class="small-box-footer">
            
            Más info <i class="fa fa-arrow-circle-right"></i>
          
          </a>

        </div>

      </div>

      <div class="col-lg-6">

        <div class="small-box bg-blue">
          
          <div class="inner">

             <h3>$<?php echo number_format($totalEfectivo,2); ?></h3>

             <p>Total de Efectivo</p>

          
          </div>
          
          <div class="icon">
          
            <i class="fa fa-usd"></i>
          
          </div>
          
          <a href="caja" class="small-box-footer">
            
            Más info <i class="fa fa-arrow-circle-right"></i>
          
          </a>

        </div>

       </div>

       <div class="col-lg-6">

        <div class="small-box bg-dark">
          
          <div class="inner">

             <h3><?php echo $ventasCant[0]; ?></h3>

             <p>Cantidad de Ventas</p>

          
          </div>
          
          <div class="icon">
          
            <i class="ion ion-clipboard"></i>
          
          </div>
          
          <a href="caja" class="small-box-footer">
            
            Más info <i class="fa fa-arrow-circle-right"></i>
          
          </a>

        </div>

       </div>

      <!-- 
       <div class="col-lg-3">

        <div class="small-box bg-green">
          
          <div class="inner">

             <h3>$<?php echo number_format($totalCta,2); ?></h3>

             <p>Total de Cuenta Corriente</p>

          
          </div>
          
          <div class="icon">
          
            <i class="ion ion-clipboard"></i>
          
          </div>
          
          <a href="caja" class="small-box-footer">
            
            Más info <i class="fa fa-arrow-circle-right"></i>
          
          </a>

        </div>

       </div> -->

      <div class="col-lg-6">

        <div class="small-box bg-green">
          
          <div class="inner">

             <h3>$<?php echo number_format($totalTarjeta,2); ?></h3>

             <p>Total de Tarjetas</p>

          
          </div>
          
          <div class="icon">
          
            <i class="fa fa-credit-card"></i>
          
          </div>
          
          <a href="caja" class="small-box-footer">
            
            Más info <i class="fa fa-arrow-circle-right"></i>
          
          </a>

        </div>

       </div>

       <div class="col-lg-8">

  <div class="small-box bg-yellow">
    
    <div class="inner">
    
      <h3><?php echo  number_format($stockValorizado['resultado'],2); ?></h3>

      <p>Stock Valorizado</p>
  
    </div>
    
    <div class="icon">
    
      <i class="fa fa-dropbox"></i>
    
    </div>
    
    <a href="productos" class="small-box-footer">

      Más info <i class="fa fa-arrow-circle-right"></i>

    </a>

  </div>

</div>

<div class="col-lg-4 col-xs-6">

    <div class="small-box bg-blue">
      
      <div class="inner">
      
       <h3><?php echo  number_format($totalVale,2); ?></h3>

        <p>Vales</p>
      
      </div>
      
      <div class="icon">
      
        <i class="fa fa fa-building"></i>
      
      </div>
      
      <a href="vales" class="small-box-footer">
        
        Más info <i class="fa fa-arrow-circle-right"></i>
      
      </a>

    </div>

</div>

<div class="col-lg-4 col-xs-6">

    <div class="small-box bg-purple">
      
      <div class="inner">
      
       <h3>Videos</h3>

        <p>videos explicativos</p>
        <p>Uso del Programa</p>
      
      </div>
      
      <div class="icon">
      
        <i class="fa fa-file-video-o"></i>
      
      </div>
      
      <a href="videos" class="small-box-footer">
        
        Más info <i class="fa fa-arrow-circle-right"></i>
      
      </a>

    </div>

    
    

</div>
<div class="col-lg-6">
  <div class="small-box bg-info">
    <div class="inner">
      <h3>$<?php echo number_format($gastosDia,2); ?></h3>
      <p>Gastos del día</p>
    </div>
    <div class="icon">
      <i class="fa fa-sun-o"></i>
    </div>
    <a href="gastos" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!-- <div class="col-lg-8 col-xs-6">

    <div class="small-box bg-red">
      
      <div class="inner">
      
       <h3>Copia Seguridad</h3>

        <p>Copia de Seguridad</p>
       <small> <p id="ultimaBd">Ultima: <?php echo $ultimaFechaActualizacion['fecha'];  ?></p></small>
      
      </div>
      
      <div class="icon">
      
        <i class="fa fa-refresh"></i>
      
      </div>
      
      <a href="index.php?ruta=serverbk&actualizarServer=1" class="small-box-footer">
        
        Realice su copia AHORA <i class="fa fa-arrow-circle-right"></i>
      
      </a>

    </div>

</div> -->
</div></div></div>

</div>

<script>
$(document).ready(function() {
  console.log('Script cargado en administracion');
  
  // Verificar si el botón existe
  if($('#daterange-btn-caja').length > 0) {
    console.log('Botón encontrado en administracion');
  } else {
    console.log('Botón NO encontrado en administracion');
    return;
  }
  
  // Verificar si daterangepicker está disponible
  if(typeof $.fn.daterangepicker === 'undefined') {
    console.log('Daterangepicker NO está disponible en administracion');
    return;
  } else {
    console.log('Daterangepicker está disponible en administracion');
  }
  
  // DATERANGEPICKER PARA CAJA
  $('#daterange-btn-caja').daterangepicker(
    {
      ranges   : {
        'Hoy'       : [moment(), moment()],
        'Ayer'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
        'Últimos 7 días' : [moment().subtract(6, 'days'), moment()],
        'Últimos 30 días': [moment().subtract(29, 'days'), moment()],
        'Este mes'  : [moment().startOf('month'), moment().endOf('month')],
        'Último mes'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
      },
      startDate: moment(),
      endDate  : moment()
    },
    function (start, end) {
      $('#daterange-btn-caja span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));

      var fechaInicial = start.format('YYYY-MM-DD').padStart(10, '0');
      var fechaFinal = end.format('YYYY-MM-DD').padStart(10, '0');

      var capturarRango = $("#daterange-btn-caja span").html();
     
      localStorage.setItem("capturarRangoCaja", capturarRango);

      window.location = "index.php?ruta=inicio&fechaInicial="+fechaInicial+"&fechaFinal="+fechaFinal;

    }
  );

  console.log('Daterangepicker inicializado en administracion');
});
</script>





