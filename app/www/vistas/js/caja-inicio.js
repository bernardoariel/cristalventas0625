$(function () {

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
  )

  // CANCELAR RANGO DE FECHAS
  $(".daterangepicker.opensleft .range_inputs .cancelBtn").on("click", function(){

    localStorage.removeItem("capturarRangoCaja");
    localStorage.clear();
    window.location = "inicio";
  })

  // CAPTURAR HOY
  $(".daterangepicker.opensleft .ranges li").on("click", function(){

    var textoHoy = $(this).attr("data-range-key");

    if(textoHoy == "Hoy"){

      var fechaInicial = moment().format('YYYY-MM-DD').padStart(10, '0');
      var fechaFinal = moment().format('YYYY-MM-DD').padStart(10, '0');

      localStorage.setItem("capturarRangoCaja", "Hoy");

      window.location = "index.php?ruta=inicio&fechaInicial="+fechaInicial+"&fechaFinal="+fechaFinal;

    }

  })

}) 