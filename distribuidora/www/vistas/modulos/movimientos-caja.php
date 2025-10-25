<?php
$hoy    = date('Y-m-d');
$totDia = ControladorCajaMovimientos::ctrTotalesDia($hoy);
$ingDia = (float)($totDia['ingresos'] ?? 0);
$egrDia = (float)($totDia['egresos'] ?? 0);
// Parámetros de rango para la TABLA
if (isset($_GET["fechaInicial"], $_GET["fechaFinal"])) {
  $fi = $_GET["fechaInicial"];
  $ff = $_GET["fechaFinal"];
} else {
  $fi = date('Y-m-d');
  $ff = date('Y-m-d');
}

// Totales SOLO del día de hoy (para los dos boxes)
$hoy    = date('Y-m-d');
$totDia = ControladorCajaMovimientos::ctrTotalesDia($hoy);
$ingDia = (float)($totDia['ingresos'] ?? 0);
$egrDia = (float)($totDia['egresos'] ?? 0);

// Lista por rango (como ya la tenías)
$movs = ControladorCajaMovimientos::ctrMovimientosRango($fi, $ff);
?>

<div class="content-wrapper">

  <section class="content-header">
  <h1>Movimientos de caja</h1>
  <ol class="breadcrumb">
    <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li class="active">Movimientos de caja</li>
  </ol>

  <div class="row" style="margin-top:15px;">
    <!-- Ingresos del día -->
    <div class="col-lg-6">
      <div class="small-box bg-green">
        <div class="inner">
          <h3>$<?= number_format($ingDia,2) ?></h3>
          <p>Ingresos del día (<?= date('d/m/Y', strtotime($hoy)) ?>)</p>
        </div>
        <div class="icon"><i class="fa fa-plus"></i></div>
      </div>
    </div>

    <!-- Egresos del día -->
    <div class="col-lg-6">
      <div class="small-box bg-red">
        <div class="inner">
          <h3>$<?= number_format($egrDia,2) ?></h3>
          <p>Egresos del día (<?= date('d/m/Y', strtotime($hoy)) ?>)</p>
        </div>
        <div class="icon"><i class="fa fa-minus"></i></div>
      </div>
    </div>
  </div>
</section>


  <section class="content">

    <div class="box">

      <div class="box-header with-border">
      <div class="row" style="margin-top:10px;">
        <div class="col-md-6"><!-- vacío: ya no mostramos Ingresar/Extraer --></div>
        <div class="col-md-6" style="display:flex;justify-content:flex-end;gap:10px;">
          <div style="width:220px;">
            <button type="button" class="btn btn-default btn-block" id="daterange-btn-mov">
              <span><i class="fa fa-calendar"></i>
                Rango: <?= date('d/m/Y', strtotime($fi)) ?> - <?= date('d/m/Y', strtotime($ff)) ?>
              </span>
              <i class="fa fa-caret-down"></i>
            </button>
          </div>
          <a class="btn btn-info" href="movimientos-caja"><i class="fa fa-refresh"></i> Limpiar</a>
        </div>
      </div>
    </div>

      <div class="box-body">
        <table class="table table-bordered table-striped dt-responsive tablas" width="100%">
          <thead>
            <tr>
              <th style="width:60px">#</th>
              <th>Fecha</th>
              <th>Tipo</th>
              <th>Monto</th>
              <th>Concepto</th>
            </tr>
          </thead>
          <tbody>
            <?php if ($movs): foreach ($movs as $i => $m): ?>
              <tr>
                <td><?= $i+1 ?></td>
                <td><?= date('d/m/Y H:i:s', strtotime($m['fecha'])) ?></td>
                <td>
                  <?php if ($m['tipo']==='INGRESO'): ?>
                    <span class="label label-success">INGRESO</span>
                  <?php else: ?>
                    <span class="label label-danger">EGRESO</span>
                  <?php endif; ?>
                </td>
                <td>$ <?= number_format($m['monto'],2) ?></td>
                <td class="text-uppercase"><?= htmlspecialchars($m['concepto']) ?></td>
              </tr>
            <?php endforeach; endif; ?>
          </tbody>
        </table>
      </div>

    </div>

  </section>

</div>

<script>
$(function(){
  // DateRangePicker (igual que en tus otras pantallas)
  $('#daterange-btn-mov').daterangepicker(
    {
      ranges   : {
        'Hoy'            : [moment(), moment()],
        'Ayer'           : [moment().subtract(1,'days'), moment().subtract(1,'days')],
        'Últimos 7 días' : [moment().subtract(6,'days'), moment()],
        'Últimos 30 días': [moment().subtract(29,'days'), moment()],
        'Este mes'       : [moment().startOf('month'), moment().endOf('month')],
        'Último mes'     : [moment().subtract(1,'month').startOf('month'), moment().subtract(1,'month').endOf('month')]
      },
      startDate: moment('<?= $fi ?>'),
      endDate  : moment('<?= $ff ?>')
    },
    function (start, end) {
      var fi = start.format('YYYY-MM-DD');
      var ff = end.format('YYYY-MM-DD');
      window.location = "index.php?ruta=movimientos-caja&fechaInicial="+fi+"&fechaFinal="+ff;
    }
  );
});
</script>
