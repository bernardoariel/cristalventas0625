/*=============================================
DATEPICKER DE RANGO PARA VENDEDORES
=============================================*/
$(document).ready(function() {
    var fechaHoy = moment().format('YYYY-MM-DD');
    
    // Inicializar con fecha de hoy
    $('#rango-fechas').val(fechaHoy + ' - ' + fechaHoy);
    $('#fecha1').val(fechaHoy);
    $('#fecha2').val(fechaHoy);
    
    $('#rango-fechas, .input-group-addon').on('click', function() {
        $('#rango-fechas').daterangepicker({
            "showDropdowns": true,
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " - ",
                "applyLabel": "Aplicar",
                "cancelLabel": "Cancelar",
                "fromLabel": "Desde",
                "toLabel": "Hasta",
                "customRangeLabel": "Personalizado",
                "daysOfWeek": [
                    "Do",
                    "Lu",
                    "Ma",
                    "Mi",
                    "Ju",
                    "Vi",
                    "Sa"
                ],
                "monthNames": [
                    "Enero",
                    "Febrero",
                    "Marzo",
                    "Abril",
                    "Mayo",
                    "Junio",
                    "Julio",
                    "Agosto",
                    "Septiembre",
                    "Octubre",
                    "Noviembre",
                    "Diciembre"
                ],
                "firstDay": 1
            },
            "linkedCalendars": false,
            "autoUpdateInput": true,
            "startDate": moment(),
            "endDate": moment(),
            "ranges": {
                'Hoy': [moment(), moment()],
                'Ayer': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Últimos 7 días': [moment().subtract(6, 'days'), moment()],
                'Últimos 30 días': [moment().subtract(29, 'days'), moment()],
                'Este mes': [moment().startOf('month'), moment().endOf('month')],
                'Mes pasado': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                'Este año': [moment().startOf('year'), moment().endOf('year')],
                'Año pasado': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')]
            }
        }, function(start, end, label) {
            // Cuando se selecciona un rango, actualizar los campos
            $('#rango-fechas').val(start.format('YYYY-MM-DD') + ' - ' + end.format('YYYY-MM-DD'));
            $('#fecha1').val(start.format('YYYY-MM-DD'));
            $('#fecha2').val(end.format('YYYY-MM-DD'));
        });
        
        // Abrir el datepicker
        $('#rango-fechas').data('daterangepicker').show();
    });
});