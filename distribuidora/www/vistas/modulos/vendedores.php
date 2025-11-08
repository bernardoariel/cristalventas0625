<?php
switch ($_SESSION['usuario']) {
  case 'admin':
    break;
  case 'superadmin':
    break;
  case 'cristal':
    break;
  default:
    include "404.php";
    exit;
    break;
}

// Incluir configuración de colores para vendedores
include "colores-vendedores.php";

// FECHA DEL DIA DE HOY
$fecha = date('Y-m-d');
if(isset($_POST['fecha1'])){
    $fechaInicial = $_POST['fecha1'];
    $fechaFinal = $_POST['fecha2'];
}else{
    $fechaInicial = $fecha;
    $fechaFinal = $fecha;
}
?>

<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Vendedores
      
      <small>Estadísticas de Ventas</small>
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Vendedores</li>
    
    </ol>

  </section>

  <section class="content">

    <!-- FILTROS DE FECHA PARA EL GRÁFICO -->
    <div class="box box-primary">
      
      <div class="box-header with-border">

        <div class="row">
               
          <form action="vendedores" method="POST" name="formFechas">

          <div class="col-xs-4">
            
            <label for="fecha">RANGO DE FECHAS</label>

            <div class="input-group">
              <input type="text" class="form-control" id="rango-fechas" value="<?php echo $fechaInicial.' - '.$fechaFinal; ?>" name="rango_fechas" readonly style="background-color: white; cursor: pointer;">
              <input type="hidden" name="fecha1" id="fecha1" value="<?php echo $fechaInicial; ?>">
              <input type="hidden" name="fecha2" id="fecha2" value="<?php echo $fechaFinal; ?>">
              <span class="input-group-addon" style="cursor: pointer;"><i class="glyphicon glyphicon-calendar"></i></span>
            </div>

          </div>

          <div class="col-xs-2">

            <button type="submit" class="btn btn-info" style="margin-top:24px;width:110px">Filtrar</button>
            
          </div>
          
          </form>

        </div>

      </div>
          
    </div>

    <!-- GRÁFICO DE VENTAS POR VENDEDOR -->
    <?php
    $ventasPorVendedor = ControladorVendedores::ctrObtenerVentasPorVendedor($fechaInicial, $fechaFinal);
    
    // Ordenar por ID de vendedor (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    usort($ventasPorVendedor, function($a, $b) {
        return $a['id'] - $b['id'];
    });
    ?>

    <div class="box box-success">
      
      <div class="box-header with-border">
        
        <h3 class="box-title">Ventas por Vendedor (<?php echo date('d/m/Y', strtotime($fechaInicial)); ?> - <?php echo date('d/m/Y', strtotime($fechaFinal)); ?>)</h3>
      
      </div>

      <div class="box-body">
        
        <div class="chart-responsive">
          
          <div class="chart" id="bar-chart-vendedores" style="height: 300px;"></div>

        </div>

      </div>

    </div>

    <!-- TABLA DE VENDEDORES -->
    <div class="box">

      <div class="box-header with-border">
  
        <h3 class="box-title">Lista de Vendedores</h3>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas" width="100%">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Nombre</th>
           <!-- <th>Porcentaje (%)</th> -->
           <!-- <th>Observaciones</th> -->
           <th>Total Ventas (Período)</th>
           <th>Cantidad Ventas</th>

         </tr> 

        </thead>

        <tbody>

        <?php

          $item = null;
          $valor = null;

          $vendedores = ControladorVendedores::ctrMostrarVendedores($item, $valor);

          foreach ($vendedores as $key => $value) {
           
            echo '<tr>

                    <td>'.($key+1).'</td>';

                 

                    // Aplicar color según el ID del vendedor
                    $vendedorNombre = $value["nombre"];
                    $estiloVendedor = '';
                    
                    if(isset($coloresVendedores[$value["id"]])){
                        $colorConfig = $coloresVendedores[$value["id"]];
                        $estiloVendedor = 'background-color:'.$colorConfig['bg'].'; color:'.$colorConfig['color'].'; padding:5px 8px; border-radius:3px; font-weight:bold;';
                    }

                    echo '<td><span style="'.$estiloVendedor.'">'.$vendedorNombre.'</span></td>';

                    // <td>'.($value["porcentaje"] ? $value["porcentaje"].'%' : 'N/A').'</td>

                    // <td>'.($value["observaciones"] ? $value["observaciones"] : 'N/A').'</td>

                    // Buscar datos de ventas para este vendedor
                    $totalVentas = 0;
                    $cantidadVentas = 0;
                    foreach($ventasPorVendedor as $ventaVendedor) {
                        if($ventaVendedor['id'] == $value['id']) {
                            $totalVentas = $ventaVendedor['total_ventas'];
                            $cantidadVentas = $ventaVendedor['cantidad_ventas'];
                            break;
                        }
                    }

                    echo '<td>$'.number_format($totalVentas, 2).'</td>
                    
                    <td>'.$cantidadVentas.'</td>

                  </tr>';
          
            }

        ?>

        </tbody>

       </table>

      </div>

    </div>

  </section>

</div>

<script>

// GRÁFICO DE BARRAS PARA VENDEDORES - Barras individuales con colores
var chartData = [
  <?php
    foreach($ventasPorVendedor as $vendedor){
      echo "{vendedor: 'Vendedor ".$vendedor["id"]."', ventas: ".$vendedor["total_ventas"]."},";
    }
  ?>
];

var chartColors = [
  <?php
    foreach($ventasPorVendedor as $vendedor){
      if(isset($coloresVendedores[$vendedor["id"]])){
        echo "'".$coloresVendedores[$vendedor["id"]]['color']."',";
      } else {
        echo "'#00a65a',";
      }
    }
  ?>
];

var bar = new Morris.Bar({
  element: 'bar-chart-vendedores',
  resize: true,
  data: chartData,
  xkey: 'vendedor',
  ykeys: ['ventas'],
  labels: ['Ventas ($)'],
  barColors: function (row, series, type) {
    return chartColors[row.x];
  },
  preUnits: '$',
  hideHover: 'auto',
  hoverCallback: function (index, options, content, row) {
    var valor = parseFloat(row.ventas).toFixed(2);
    return "<div class='morris-hover-row-label'>" + row.vendedor + "</div>" +
           "<div class='morris-hover-point' style='color: " + chartColors[index] + "'>" +
           "Ventas ($): $" + valor +
           "</div>";
  }
});

</script>