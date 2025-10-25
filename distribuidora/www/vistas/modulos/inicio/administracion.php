<?php
// Saldo actual de caja (solo efectivo, desde caja_movimientos)
$saldoCaja = 0;
if (class_exists('ControladorCajaMovimientos')) {
  $saldoCaja = ControladorCajaMovimientos::ctrSaldoActual();
}
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
$totalTransferencia = 0;

foreach($caja as $registro){
  $totalEfectivo += $registro['efectivo'];
  $totalTarjeta += $registro['tarjeta'];
  $totalCta += $registro['cuenta_corriente'];
  $totalVale += $registro['vale'];
  $totalTransferencia += $registro['transferencia'] ?? 0;
}

$item = null;
$valor = null;
$orden = "id";

// Obtener total de ventas por rango de fechas
$ventas = ControladorVentas::ctrSumaTotalVentasEntreFechas($fechaInicial, $fechaFinal);
$stockValorizado = ControladorProductos::ctrStockValorizado();

// Obtener ventas por rango de fechas
$ventasCant = ControladorVentas::ctrContarVentasRango($fechaInicial, $fechaFinal);

// Obtener ganancia por rango de fechas
$ganancia = ControladorVentas::ctrCalcularGananciaEntreFechas($fechaInicial, $fechaFinal);

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
      
    <!-- FILA 1: Total Ventas (6) - Total Efectivo (6) -->
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
  <div class="small-box bg-purple">
    <div class="inner">
      <h3>$<?php echo number_format($saldoCaja,2); ?></h3>
      <p>Caja (efectivo actual)</p>
    </div>

    <div class="icon"><i class="fa fa-money"></i></div>

    <!-- Footer con 3 acciones alineadas -->
    <div class="caja-footer">
  <a href="#" data-toggle="modal" data-target="#modalIngresar"><i class="fa fa-plus"></i> Ingresar</a>
  <a href="movimientos-caja"><i class="fa fa-list"></i> Listar</a>
  <a href="#" data-toggle="modal" data-target="#modalExtraer"><i class="fa fa-minus"></i> Extraer</a>
</div>

  </div>
</div>

 
    

    <!-- FILA 2: Total Transferencias - Total Tarjetas -->
     <div class="col-lg-4">
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
    <div class="col-lg-4">
      <div class="small-box bg-teal">
        <div class="inner">
          <h3>$<?php echo number_format($totalTransferencia,2); ?></h3>
          <p>Total de Transferencias</p>
        </div>
        <div class="icon">
          <i class="fa fa-exchange"></i>
        </div>
        <a href="caja" class="small-box-footer">
          Más info <i class="fa fa-arrow-circle-right"></i>
        </a>
      </div>
    </div>

    <div class="col-lg-4">
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

    <!-- FILA 3: Vales - Cantidad Ventas (4) - Gastos -->
    <div class="col-lg-4">
      <div class="small-box bg-blue">
        <div class="inner">
          <h3>$<?php echo number_format($totalVale,2); ?></h3>
          <p>Vales</p>
        </div>
        <div class="icon">
          <i class="fa fa-building"></i>
        </div>
        <a href="vales" class="small-box-footer">
          Más info <i class="fa fa-arrow-circle-right"></i>
        </a>
      </div>
    </div>

    <div class="col-lg-4">
      <div class="small-box bg-navy">
        <div class="inner">
          <h3><?php echo $ventasCant[0]; ?></h3>
          <p>Cantidad de Ventas</p>
        </div>
        <div class="icon">
          <i class="ion ion-clipboard"></i>
        </div>
        <a href="ventas" class="small-box-footer">
          Más info <i class="fa fa-arrow-circle-right"></i>
        </a>
      </div>
    </div>

    <div class="col-lg-4">
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

    <!-- FILA 4: Stock Valorizado (6) - Ganancia (6) -->
    <div class="col-lg-6">
      <div class="small-box bg-yellow">
        <div class="inner">
          <h3>$<?php echo number_format($stockValorizado['resultado'],2); ?></h3>
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

    <div class="col-lg-6">
      <div class="small-box bg-orange">
        <div class="inner">
          <?php 
            $gananciaData = $ganancia ?? array("ganancia" => 0, "total_costo" => 0, "productos_sin_costo" => 0);
            $totalCosto = $gananciaData["total_costo"] ?? 0;
            $productosSinCosto = $gananciaData["productos_sin_costo"] ?? 0;
            $gananciaCalculada = $gananciaData["ganancia"] ?? 0;
          ?>
          
          <?php if($totalCosto == 0 && $productosSinCosto > 0): ?>
            <h3><small>Sin datos</small></h3>
            <p>Ganancia
              <br><small style="color: #fff; opacity: 0.8;">
                Falta configurar precios de costo en productos
              </small>
            </p>
          <?php else: ?>
            <h3>$<?php echo number_format($gananciaCalculada, 2); ?></h3>
            <p>Ganancia
              <?php if($productosSinCosto > 0): ?>
                <br><small style="color: #fff; opacity: 0.8;">
                  <?php echo $productosSinCosto; ?> productos sin precio de costo
                </small>
              <?php endif; ?>
            </p>
          <?php endif; ?>
        </div>
        <div class="icon">
          <i class="fa fa-line-chart"></i>
        </div>
        <a href="productos" class="small-box-footer">
          Configurar precios <i class="fa fa-arrow-circle-right"></i>
        </a>
      </div>
    </div>

        <!-- FILA 5: Videos -->
        <div class="col-lg-12">
          <div class="alert alert-info" style="margin-bottom: 20px; padding: 8px 15px;">
            <i class="fa fa-video-camera"></i> Videos - Tutoriales y ayuda disponibles. <a href="videos" class="alert-link">Ver videos</a>
          </div>
        </div>
</div></div></div>

</div>
<!-- Modal INGRESAR -->
<div class="modal fade" id="modalIngresar" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <form id="formIngresar">
        <div class="modal-header bg-green">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><i class="fa fa-plus"></i> Ingresar dinero</h4>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>Importe</label>
            <input type="number" step="0.01" min="0.01" class="form-control" name="monto" required>
          </div>
          <div class="form-group">
            <label>Detalle</label>
            <input type="text" class="form-control" name="concepto" maxlength="255" placeholder="Ej: Venta contado" required>
          </div>
          <input type="hidden" name="tipo" value="INGRESO">
          <input type="hidden" name="accion" value="registrar">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">Guardar</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal EXTRAER -->
<div class="modal fade" id="modalExtraer" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <form id="formExtraer">
        <div class="modal-header bg-red">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><i class="fa fa-minus"></i> Extraer dinero</h4>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>Importe</label>
            <input type="number" step="0.01" min="0.01" class="form-control" name="monto" id="montoExtraer" required>
            <small id="ayudaExtraer" class="help-block"></small> <!-- ⬅ feedback en vivo -->
            <div id="errorExtraer" class="text-danger" style="display:none;"></div> <!-- ⬅ error del server -->
          </div>
          <div class="form-group">
            <label>Detalle</label>
            <input type="text" class="form-control" name="concepto" maxlength="255" placeholder="Ej: Retiro para gastos" required>
          </div>
          <input type="hidden" name="tipo" value="EGRESO">
          <input type="hidden" name="accion" value="registrar">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-danger">Guardar</button>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
  var saldoCajaActual = <?php echo number_format($saldoCaja, 2, '.', ''); ?>;
</script>
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
$(function(){

  /* ====== Extraer: feedback en vivo ====== */
  $('#montoExtraer').on('input', function () {
    var m = parseFloat(this.value || 0);
    $('#errorExtraer').hide().text('');
    if (!isFinite(m) || m <= 0) {
      $('#ayudaExtraer').text('');
      return;
    }
    if (m > saldoCajaActual) {
      $('#ayudaExtraer').text(
        'Saldo disponible: $' + saldoCajaActual.toFixed(2) +
        ' (te faltan $' + (m - saldoCajaActual).toFixed(2) + ')'
      );
    } else {
      $('#ayudaExtraer').text('Quedaría en caja: $' + (saldoCajaActual - m).toFixed(2));
    }
  });

  function enviar(form){
    var $f   = $(form);
    var $btn = $f.find('button[type=submit]');
    var tipo = ($f.find('input[name="tipo"]').val() || '').toUpperCase();

    // Validación local para EGRESO
    if (tipo === 'EGRESO') {
      var monto = parseFloat($f.find('input[name="monto"]').val());
      $('#errorExtraer').hide().text('');
      if (!isFinite(monto) || monto <= 0) {
        $('#errorExtraer').text('Ingrese un monto válido.').show();
        return;
      }
      if (monto > saldoCajaActual) {
        $('#errorExtraer').text('Saldo insuficiente en caja.').show();
        return;
      }
    }

    $btn.prop('disabled', true);

    $.ajax({
      url: 'ajax/caja_movimientos.ajax.php',
      type: 'POST',
      data: $f.serialize(),
      dataType: 'json'
    })
    .done(function(r){
      if (r && r.ok) {
        $('#modalIngresar,#modalExtraer').modal('hide');
        window.location.reload();
      } else {
        // Mostrar error en el modal si es EGRESO, si no usar alert
        if (tipo === 'EGRESO') {
          $('#errorExtraer').text((r && r.msg) || 'No se pudo guardar.').show();
        } else {
          alert((r && r.msg) || 'No se pudo guardar');
        }
        $btn.prop('disabled', false);
      }
    })
    .fail(function(xhr){
      var msg = 'Error de red';
      try { var j = JSON.parse(xhr.responseText); if (j.msg) msg = j.msg; } catch(e) {}
      if (tipo === 'EGRESO') {
        $('#errorExtraer').text(msg).show();
      } else {
        alert(msg);
      }
      $btn.prop('disabled', false);
    });
  }

  $('#formIngresar').on('submit', function(e){ e.preventDefault(); enviar(this); });
  $('#formExtraer').on('submit',  function(e){ e.preventDefault(); enviar(this); });

});
</script>





