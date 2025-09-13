/*=============================================
EDITAR GASTO
=============================================*/
$(".tablas").on("click", ".btnEditarGasto", function(){

	var idGasto = $(this).attr("idGasto");

	var datos = new FormData();
	datos.append("idGasto", idGasto);

	$.ajax({
		url: "ajax/gastos.ajax.php",
		method: "POST",
      	data: datos,
      	cache: false,
     	contentType: false,
     	processData: false,
     	dataType:"json",
     	success: function(respuesta){
     		console.log("respuesta", respuesta);

     		$("#editarNombre").val(respuesta["nombre"]);
     		$("#editarImporte").val(respuesta["importe"]);
     		$("#editarFechaTransaccion").val(respuesta["fecha_transaccion"]);
     		$("#editarCategoria").val(respuesta["id_categoria"]);
     		$("#editarObservacion").val(respuesta["obs"]);
     		$("#idGasto").val(respuesta["id"]);
     	}

	})

})

/*=============================================
ELIMINAR GASTO
=============================================*/
$(".tablas").on("click", ".btnEliminarGasto", function(){

	 var idGasto = $(this).attr("idGasto");
	 console.log("idGasto", idGasto);

	 swal({
	 	title: '¿Está seguro de borrar el gasto?',
	 	text: "¡Si no lo está puede cancelar la acción!",
	 	type: 'warning',
	 	showCancelButton: true,
	 	confirmButtonColor: '#3085d6',
	 	cancelButtonColor: '#d33',
	 	cancelButtonText: 'Cancelar',
	 	confirmButtonText: 'Si, borrar gasto!'
	 }).then(function(result){

	 	if(result.value){

	 		window.location = "index.php?ruta=gastos&idGasto="+idGasto;

	 	}

	 })

})

/*=============================================
HACER FOCO EN NOMBRE DE GASTO CUANDO AGREGO
=============================================*/
$('#modalAgregarGasto').on('shown.bs.modal', function () {
    
    $('#nuevoNombre').focus();
  
})

/*=============================================
HACER FOCO EN NOMBRE DE GASTO CUANDO EDITO
=============================================*/
$('#modalEditarGasto').on('shown.bs.modal', function () {
    
    $('#editarNombre').focus();
    $('#editarNombre').select();
  
})

/*=============================================
FILTROS DE GASTOS
=============================================*/

// Inicializar DateRangePicker
$('#filtroFecha').daterangepicker({
  locale: {
    format: 'DD/MM/YYYY',
    separator: ' - ',
    applyLabel: 'Aplicar',
    cancelLabel: 'Cancelar',
    fromLabel: 'Desde',
    toLabel: 'Hasta',
    customRangeLabel: 'Personalizado',
    weekLabel: 'S',
    daysOfWeek: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
    monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    firstDay: 1
  },
  ranges: {
    'Hoy': [moment(), moment()],
    'Ayer': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
    'Últimos 7 días': [moment().subtract(6, 'days'), moment()],
    'Últimos 30 días': [moment().subtract(29, 'days'), moment()],
    'Este mes': [moment().startOf('month'), moment().endOf('month')],
    'Mes pasado': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
  },
  startDate: moment().startOf('month'),
  endDate: moment().endOf('month')
});

// Función para filtrar gastos
function filtrarGastos() {
  
  var fechaInicio = $('#filtroFecha').data('daterangepicker').startDate.format('YYYY-MM-DD');
  var fechaFin = $('#filtroFecha').data('daterangepicker').endDate.format('YYYY-MM-DD');
  var categoria = $('#filtroCategoria').val();
  
  // Ocultar todas las filas
  $('#tablaGastos tbody tr').hide();
  
  // Filtrar filas
  $('#tablaGastos tbody tr').each(function() {
    
    var mostrar = true;
    
    // Filtrar por fecha
    var fechaGasto = $(this).find('td:eq(3)').text(); // Columna de fecha
    var fechaGastoObj = moment(fechaGasto, 'DD/MM/YYYY');
    
    if (fechaGastoObj.isBefore(fechaInicio) || fechaGastoObj.isAfter(fechaFin)) {
      mostrar = false;
    }
    
    // Filtrar por categoría
    if (categoria !== '' && mostrar) {
      var categoriaGasto = $(this).find('td:eq(4)').text(); // Columna de categoría
      var categoriaSeleccionada = $('#filtroCategoria option:selected').text();
      
      if (categoriaGasto !== categoriaSeleccionada) {
        mostrar = false;
      }
    }
    
    // Mostrar fila si pasa todos los filtros
    if (mostrar) {
      $(this).show();
    }
    
  });
  
  // Actualizar contador
  actualizarContador();
  
}

// Función para limpiar filtros
function limpiarFiltros() {
  
  $('#filtroFecha').data('daterangepicker').setStartDate(moment().startOf('month'));
  $('#filtroFecha').data('daterangepicker').setEndDate(moment().endOf('month'));
  $('#filtroCategoria').val('');
  
  // Mostrar todas las filas
  $('#tablaGastos tbody tr').show();
  
  // Actualizar contador
  actualizarContador();
  
}

// Función para actualizar contador de registros
function actualizarContador() {
  
  var totalRegistros = $('#tablaGastos tbody tr:visible').length;
  
  // Mostrar contador en algún lugar de la página
  /* if ($('#contadorRegistros').length === 0) {
    $('#tablaGastos').closest('.box-body').prepend('<div id="contadorRegistros" class="alert alert-info"><strong>Registros mostrados: ' + totalRegistros + '</strong></div>');
  } else {
    $('#contadorRegistros strong').text('Registros mostrados: ' + totalRegistros);
  } */
  
}

// Eventos de los botones
$('#btnFiltrar').click(function() {
  filtrarGastos();
});

$('#btnLimpiar').click(function() {
  window.location = 'index.php?ruta=gastos';
});

$('#btnExportar').click(function() {
  exportarExcel();
});

// Filtrar automáticamente al cambiar fechas
$('#filtroFecha').on('apply.daterangepicker', function(ev, picker) {
  filtrarGastos();
});

// Filtrar automáticamente al cambiar categoría
$('#filtroCategoria').change(function() {
  var categoria = $(this).val();
  var fechaInicial = getParameterByName('fechaInicial');
  var fechaFinal = getParameterByName('fechaFinal');
  var url = 'index.php?ruta=gastos';
  var params = [];
  if (fechaInicial && fechaFinal) {
    params.push('fechaInicial=' + fechaInicial);
    params.push('fechaFinal=' + fechaFinal);
  }
  if (categoria) {
    params.push('categoria=' + categoria);
  }
  if (params.length > 0) {
    url += '&' + params.join('&');
  }
  window.location = url;
});

// Función para exportar a Excel
function exportarExcel() {
  
  var fechaInicio = $('#filtroFecha').data('daterangepicker').startDate.format('DD/MM/YYYY');
  var fechaFin = $('#filtroFecha').data('daterangepicker').endDate.format('DD/MM/YYYY');
  var categoria = $('#filtroCategoria option:selected').text();
  
  // Crear tabla temporal para exportar
  var tabla = document.createElement('table');
  tabla.innerHTML = $('#tablaGastos').html();
  
  // Obtener solo las filas visibles
  var filasVisibles = $('#tablaGastos tbody tr:visible');
  
  // Crear contenido del Excel
  var contenido = 'Gastos - Período: ' + fechaInicio + ' a ' + fechaFin + '\n';
  if (categoria !== 'Todas las categorías') {
    contenido += 'Categoría: ' + categoria + '\n';
  }
  contenido += '\n';
  
  // Encabezados
  contenido += 'N°\tNombre\tImporte\tFecha\tCategoría\tUsuario\tObservaciones\n';
  
  // Datos
  filasVisibles.each(function(index) {
    var fila = $(this);
    var numero = index + 1;
    var nombre = fila.find('td:eq(1)').text();
    var importe = fila.find('td:eq(2)').text();
    var fecha = fila.find('td:eq(3)').text();
    var categoria = fila.find('td:eq(4)').text();
    var usuario = fila.find('td:eq(5)').text();
    var observaciones = fila.find('td:eq(6)').text();
    
    contenido += numero + '\t' + nombre + '\t' + importe + '\t' + fecha + '\t' + categoria + '\t' + usuario + '\t' + observaciones + '\n';
  });
  
  // Crear y descargar archivo
  var blob = new Blob([contenido], { type: 'text/plain;charset=utf-8;' });
  var link = document.createElement('a');
  var url = URL.createObjectURL(blob);
  link.setAttribute('href', url);
  link.setAttribute('download', 'gastos_' + fechaInicio.replace(/\//g, '-') + '_' + fechaFin.replace(/\//g, '-') + '.csv');
  link.style.visibility = 'hidden';
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
  
}

// Inicializar contador al cargar la página
$(document).ready(function() {
  actualizarContador();
});

/*=============================================
RANGO DE FECHAS GASTOS (igual a ventas)
=============================================*/

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? null : decodeURIComponent(results[1].replace(/\+/g, " "));
}

var fechaInicial = getParameterByName('fechaInicial');
var fechaFinal = getParameterByName('fechaFinal');

if(fechaInicial && fechaFinal) {
    var texto = '';
    if(fechaInicial === fechaFinal) {
        texto = moment(fechaInicial).format('DD/MM/YYYY');
    } else {
        texto = moment(fechaInicial).format('DD/MM/YYYY') + ' - ' + moment(fechaFinal).format('DD/MM/YYYY');
    }
    $("#reportrange-gastos").html('<i class="fa fa-calendar"></i> ' + texto);
} else {
    $("#reportrange-gastos").html('<i class="fa fa-calendar"></i> Hoy');
}

$('#daterange-btn-gastos').daterangepicker(
  {
    ranges   : {
      'Hoy'       : [moment(), moment()],
      'Ayer'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
      'Últimos 7 días' : [moment().subtract(6, 'days'), moment()],
      'Últimos 30 días': [moment().subtract(29, 'days'), moment()],
      'Este mes'  : [moment().startOf('month'), moment().endOf('month')],
      'Mes pasado'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
    },
    startDate: fechaInicial ? moment(fechaInicial) : moment(),
    endDate  : fechaFinal ? moment(fechaFinal) : moment(),
    locale: {
      format: 'DD/MM/YYYY',
      applyLabel: 'Aplicar',
      cancelLabel: 'Cancelar',
      customRangeLabel: 'Rango Personalizado'
    }
  },
  function (start, end) {
    var fechaInicial = start.format('YYYY-MM-DD');
    var fechaFinal = end.format('YYYY-MM-DD');
    window.location = 'index.php?ruta=gastos&fechaInicial='+fechaInicial+'&fechaFinal='+fechaFinal;
  }
);