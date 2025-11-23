let valorNombreCrear = false;
let valorCodigoCrear = false;
let valorNombreEditar = true;   // al abrir viene con valores, arrancamos en true
let valorCodigoEditar = true;

function numeroValido(v) {
  if (v === '' || v === null) return false;
  const n = Number(v);
  return Number.isFinite(n) && n >= 0;
}

function validateCrearProducto() {
  const stockVal = $(refsCrear.stock).val(); // <-- USAR refsCrear.stock

  const filled =
    $('#nuevaCategoria').val() &&
    $('#nuevoCodigo').val()?.trim().length > 0 &&
    $('#nuevoNombre').val()?.trim().length > 0 &&
    (stockVal ?? '').toString().length > 0 &&                // <-- stock
    $('#nuevoPrecioCompra').val()?.toString().length > 0 &&
    $('#nuevoPrecioVenta').val()?.toString().length > 0;

  const numerosOk =
    numeroValido(stockVal) &&                                 // <-- stock
    numeroValido($('#nuevoPrecioCompra').val()) &&
    numeroValido($('#nuevoPrecioVenta').val());

  const unicidadOk = valorNombreCrear === true && valorCodigoCrear === true;

  $('#btnGuardarCrearProducto').prop('disabled', !(filled && numerosOk && unicidadOk));
}

// - refs de campos (cambiá si tenés otros IDs)
const refsCrear = {
  cat:   '#nuevaCategoria',
  cod:   '#nuevoCodigo',
  nom:   '#nuevoNombre',
  desc:  '#nuevaDescripcion',   // si la descripción NO es obligatoria, quitá esta línea del chequeo
  stock: '#nuevoStock, [name="nuevoStock"]',
  pc:    '#nuevoPrecioCompra',
  pv:    '#nuevoPrecioVenta',
  btn:   '#btnGuardarCrearProducto'
};
const refsEditar = {
  cat:   '#editarCategoria',
  cod:   '#editarCodigo',
  nom:   '#editarNombre',
  desc:  '#editarDescripcion',
  stock: '#editarStock, [name="editarStock"], [name="stock"]',
  pc:    '#editarPrecioCompra',
  pv:    '#editarPrecioVenta',
  btn:   '#btnGuardarEditarProducto'
};
// Deshabilitá al abrir el modal y enganchá eventos
$('#modalAgregarProducto').on('shown.bs.modal', function () {
  valorNombreCrear = false;
  valorCodigoCrear = false;
  $('#errNombreCrear').html('');
  $('#errCodigoCrear').html('');
  $('#btnGuardarCrearProducto').prop('disabled', true);
  $('#nuevoNombre').focus();
  validateCrearProducto();
});
function validateEditarProducto() {
  const stockVal = $(refsEditar.stock).val();

  const filled =
    $(refsEditar.cat).val() &&
    $(refsEditar.cod).val()?.trim().length > 0 &&
    $(refsEditar.nom).val()?.trim().length > 0 &&
    (stockVal ?? '').toString().length > 0 &&
    $(refsEditar.pc).val()?.toString().length > 0 &&
    $(refsEditar.pv).val()?.toString().length > 0;

  const numerosOk =
    numeroValido(stockVal) &&
    numeroValido($(refsEditar.pc).val()) &&
    numeroValido($(refsEditar.pv).val());

  const unicidadOk = valorNombreEditar === true && valorCodigoEditar === true;

  $(refsEditar.btn).prop('disabled', !(filled && numerosOk && unicidadOk));
}

// Cada cambio de campo revalida
$([
  refsCrear.cat, refsCrear.cod, refsCrear.nom, refsCrear.desc,
  refsCrear.stock, refsCrear.pc, refsCrear.pv
].join(',')).on('input change keyup', validateCrearProducto);
$([
  refsEditar.cat, refsEditar.cod, refsEditar.nom, refsEditar.desc,
  refsEditar.stock, refsEditar.pc, refsEditar.pv
].join(',')).on('input change keyup', validateEditarProducto);
/*=============================================
CRGAR LOS DATOS JASON
=============================================*/
$('.tablaProductosCJ').DataTable( {
        "ajax": "ajax/datatable-productos.ajax.php",
        "deferRender": true,
  "retrieve": true,
  "processing": true,
   "language": {

      "sProcessing":     "Procesando...",
      "sLengthMenu":     "Mostrar _MENU_ registros",
      "sZeroRecords":    "No se encontraron resultados",
      "sEmptyTable":     "Ningún dato disponible en esta tabla",
      "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
      "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0",
      "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
      "sInfoPostFix":    "",
      "sSearch":         "Buscar:",
      "sUrl":            "",
      "sInfoThousands":  ",",
      "sLoadingRecords": "Cargando...",
      "oPaginate": {
      "sFirst":    "Primero",
      "sLast":     "Último",
      "sNext":     "Siguiente",
      "sPrevious": "Anterior"
      },
      "oAria": {
        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
      }

  }
} );

/*=============================================
CRGAR LOS DATOS JASON
=============================================*/


$('.tablaProductosNJ').DataTable( {
        // "ajax": "ajax/datatable-productos.ajax.php",
        "deferRender": true,
  "retrieve": true,
  "processing": true,
   "language": {

      "sProcessing":     "Procesando...",
      "sLengthMenu":     "Mostrar _MENU_ registros",
      "sZeroRecords":    "No se encontraron resultados",
      "sEmptyTable":     "Ningún dato disponible en esta tabla",
      "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
      "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0",
      "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
      "sInfoPostFix":    "",
      "sSearch":         "Buscar:",
      "sUrl":            "",
      "sInfoThousands":  ",",
      "sLoadingRecords": "Cargando...",
      "oPaginate": {
      "sFirst":    "Primero",
      "sLast":     "Último",
      "sNext":     "Siguiente",
      "sPrevious": "Anterior"
      },
      "oAria": {
        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
      }

  }
} );



/*=============================================
HACER FOCO EN NOMBRE DE PRODUCTOS CUANDO MODIFICO
=============================================*/
$('#modalEditarProducto').on('shown.bs.modal', function () {
  valorNombreEditar = true;
  valorCodigoEditar = true;  
  $('#editarCategoria').focus();
  $('#editarCategoria').select();
   $('#errNombreEditar').html('');
  $('#errCodigoEditar').html('');
  $(refsEditar.btn).prop('disabled', true);

  validateEditarProducto();
})


/*=============================================
CAPTURANDO LA CATEGORIA PARA ASIGNAR CÓDIGO
=============================================*/
$("#nuevaCategoria").change(function(){

	var idCategoria = $(this).val();
	console.log("idCategoria", idCategoria);

	var datos = new FormData();
    datos.append("idCategoria", idCategoria);

  	$.ajax({

      url:"ajax/categorias.ajax.php",
      method: "POST",
      data: datos,
      cache: false,
      contentType: false,
      processData: false,
      dataType:"json",
      success:function(respuesta){
      	console.log("respuesta", respuesta);

      	if(!respuesta){

      		 var nuevoCodigo = idCategoria + "01";
    $("#nuevoCodigo").val(nuevoCodigo).trigger('change');

      	}else{

          // if(respuesta["codigo"].length<=6){
            let nuevoCodigo = Number(respuesta["numero"]) + 1;
            let nuevoPrefijo =respuesta ["prefijo"];
            let codigo = nuevoPrefijo + nuevoCodigo
            console.log("respuesta[\"codigo\"]", `${nuevoCodigo}${nuevoPrefijo}`);
            $('#nuevoCodigoNumero').val(nuevoCodigo)
            $("#nuevoCodigo").val(codigo).trigger('change');
            $('#nuevoCodigo').select();
          // }else{
          //   $("#nuevoCodigo").val('');
          //   $('#nuevoCodigo').select();
          // }
      		

      	}
                validateCrearProducto();
      }

  	})

})
$('#nuevoNombre').on('input', function () {
  if (!$(this).val().trim()) { valorNombreCrear = false; validateCrearProducto(); }
});
$('#nuevoCodigo').on('input', function () {
  if (!$(this).val().trim()) { valorCodigoCrear = false; validateCrearProducto(); }
});
// /*=============================================
// AGREGANDO PRECIO DE VENTA
// =============================================*/
$("#nuevoPrecioCompra, #editarPrecioCompra").change(function(){

	if($(".porcentaje").prop("checked")){

		var valorPorcentaje = $(".nuevoPorcentaje").val();
		
		var porcentaje = Number(($("#nuevoPrecioCompra").val()*valorPorcentaje/100))+Number($("#nuevoPrecioCompra").val());

		var editarPorcentaje = Number(($("#editarPrecioCompra").val()*valorPorcentaje/100))+Number($("#editarPrecioCompra").val());

		$("#nuevoPrecioVenta").val(porcentaje.toFixed(2));
		$("#nuevoPrecioVenta").prop("readonly",true);

		$("#editarPrecioVenta").val(editarPorcentaje.toFixed(2));
		$("#editarPrecioVenta").prop("readonly",true);

	}

})

// /*=============================================
// CAMBIO DE PORCENTAJE
// =============================================*/
$(".nuevoPorcentaje").change(function(){

	if($(".porcentaje").prop("checked")){

		var valorPorcentaje = $(this).val();
		
		var porcentaje = Number(($("#nuevoPrecioCompra").val()*valorPorcentaje/100))+Number($("#nuevoPrecioCompra").val());

		var editarPorcentaje = Number(($("#editarPrecioCompra").val()*valorPorcentaje/100))+Number($("#editarPrecioCompra").val());

		$("#nuevoPrecioVenta").val(porcentaje);
		$("#nuevoPrecioVenta").prop("readonly",true);

		$("#editarPrecioVenta").val(editarPorcentaje);
		$("#editarPrecioVenta").prop("readonly",true);

	}

})

$(".porcentaje").on("ifUnchecked",function(){

	$("#nuevoPrecioVenta").prop("readonly",false);
	$("#editarPrecioVenta").prop("readonly",false);

})

$(".porcentaje").on("ifChecked",function(){

	$("#nuevoPrecioVenta").prop("readonly",true);
	$("#editarPrecioVenta").prop("readonly",true);

})



/*=============================================
EDITAR PRODUCTO
=============================================*/

$(".tablaProductos tbody").on("click", "button.btnEditarProducto", function(){

	var idProducto = $(this).attr("idProducto");
	console.log("idProducto", idProducto);
	
	var datos = new FormData();
    datos.append("idProducto", idProducto);

     $.ajax({
      url:"ajax/productos.ajax.php",
      method: "POST",
      data: datos,
      cache: false,
      contentType: false,
      processData: false,
      dataType:"json",
      success:function(respuesta){
         
          var datosCategoria = new FormData();
          datosCategoria.append("idCategoria",respuesta["id_categoria"]);

           $.ajax({

              url:"ajax/categorias.ajax.php",
              method: "POST",
              data: datosCategoria,
              cache: false,
              contentType: false,
              processData: false,
              dataType:"json",
              success:function(respuesta){
                
                $("#editarCategoria option[value="+ respuesta["id"] +"]").attr("selected",true);

              }
              
          })


          $("#idProductoEditar").val(idProducto);

           $("#editarCodigo").val(respuesta["codigo"]);

           $("#editarNombre").val(respuesta["nombre"]);

           $("#editarDescripcion").val(respuesta["descripcion"]);

           $("#editarStock").val(respuesta["stock"]);

           $("#editarPrecioCompra").val(respuesta["precio_compra"]);

           $("#editarPrecioVenta").val(respuesta["precio_venta"]);


      }

  })

})

/*=============================================
ELIMINAR PRODUCTO
=============================================*/

$(".tablaProductos tbody").on("click", "button.btnEliminarProducto", function(){

	var idProducto = $(this).attr("idProducto");
	var codigo = $(this).attr("codigo");
	var imagen = $(this).attr("imagen");
	
	swal({

		title: '¿Está seguro de borrar el producto?',
		text: "¡Si no lo está puede cancelar la accíón!",
		type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, borrar producto!'
        }).then(function(result) {
        if (result.value) {

        	window.location = "index.php?ruta=productos&idProducto="+idProducto+"&imagen="+imagen+"&codigo="+codigo;

        }


	})

})
$('#nuevoCodigo').on('change', function(e){
  
 /*  var datos = new FormData();
  datos.append("bsqCodigoCrear", true);
  datos.append("codigo", $('#nuevoCodigo').val());

  $.ajax({

    url:"ajax/productos.ajax.php",
    method: "POST",
    data: datos,
    cache: false,
    contentType: false,
    processData: false,
    
    success:function(respuesta){

    }
}) */
})

// util: debounce
function debounce(fn, wait = 350) {
  let t; 
  return function(...args) {
    clearTimeout(t);
    t = setTimeout(() => fn.apply(this, args), wait);
  };
}

// --- Nombre (crear) en tiempo real
const checkNombreCrear = debounce(function () {
  const value = $('#nuevoNombre').val().trim();

  if (value.length < 3) {
    // muy corto => no valido aún
    valorNombreCrear = false;
    $('#errNombreCrear').html('');
    return validateCrearProducto();
  }

  const datos = new FormData();
  datos.append('bsqNombreCrear', true);
  datos.append('nombre', value);

  $.ajax({
    url: 'ajax/productos.ajax.php',
    method: 'POST',
    data: datos,
    cache: false,
    contentType: false,
    processData: false,
    success: function (respuesta) {
      if (respuesta === 'nuevoNombre') {
        $('#errNombreCrear').html('Este NOMBRE ya se encuentra en la bd');
        valorNombreCrear = false;
      } else {
        $('#errNombreCrear').html('');
        valorNombreCrear = true;
      }
      validateCrearProducto();
    }
  });
}, 350);

$('#nuevoNombre').on('input blur', checkNombreCrear);

// --- Código (crear) en tiempo real
const checkCodigoCrear = debounce(function () {
  const value = $('#nuevoCodigo').val().trim();

  if (value.length === 0) {
    valorCodigoCrear = false;
    $('#errCodigoCrear').html('');
    return validateCrearProducto();
  }

  const datos = new FormData();
  datos.append('bsqCodigoCrear', true);
  datos.append('codigo', value);

  $.ajax({
    url: 'ajax/productos.ajax.php',
    method: 'POST',
    data: datos,
    cache: false,
    contentType: false,
    processData: false,
    success: function (respuesta) {
      if (respuesta === 'nuevoCodigo') {
        $('#errCodigoCrear').html('Este CODIGO ya se encuentra en la bd');
        valorCodigoCrear = false;
      } else {
        $('#errCodigoCrear').html('');
        valorCodigoCrear = true;
      }
      validateCrearProducto();
    }
  });
}, 350);

$('#nuevoCodigo').on('input blur', checkCodigoCrear);



// Nombre (editar)
$('#editarNombre').on('input blur', debounce(function () {
  const value = $('#editarNombre').val().trim();
  if (value.length < 3) {
    valorNombreEditar = false;
    $('#errNombreEditar').html('');
    return validateEditarProducto();
  }

  const datos = new FormData();
  datos.append('bsqNombreEditar', true);
  datos.append('nombre', value);

  $.ajax({
    url: 'ajax/productos.ajax.php',
    method: 'POST',
    data: datos,
    cache: false,
    contentType: false,
    processData: false,
    success: function (respuesta) {
      if (respuesta === 'editarNombre') {
        $('#errNombreEditar').html('Este NOMBRE ya existe');
        valorNombreEditar = false;
      } else {
        $('#errNombreEditar').html('');
        valorNombreEditar = true;
      }
      validateEditarProducto();
    }
  });
}, 350));

// Código (editar)
$('#editarCodigo').on('input blur', debounce(function () {
  const value = $('#editarCodigo').val().trim();
  if (!value) {
    valorCodigoEditar = false;
    $('#errCodigoEditar').html('');
    return validateEditarProducto();
  }

  const datos = new FormData();
  datos.append('bsqCodigoEditar', true);
  datos.append('codigo', value);

  $.ajax({
    url: 'ajax/productos.ajax.php',
    method: 'POST',
    data: datos,
    cache: false,
    contentType: false,
    processData: false,
    success: function (respuesta) {
      if (respuesta === 'editarCodigo') {
        $('#errCodigoEditar').html('Este CÓDIGO ya existe');
        valorCodigoEditar = false;
      } else {
        $('#errCodigoEditar').html('');
        valorCodigoEditar = true;
      }
      validateEditarProducto();
    }
  });
}, 350));


