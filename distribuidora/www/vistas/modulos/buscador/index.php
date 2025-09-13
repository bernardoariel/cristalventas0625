<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Buscador</title>
    <link rel="stylesheet" href="vistas/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vistas/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vistas/bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="vistas/dist/css/AdminLTE.css">
    <link rel="stylesheet" href="vistas/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <style>
        
        body.login-page {
            background: linear-gradient(to bottom, #093024 10%, #093024 50%, #0B6A44 100%);
            color: white;
        }
        .contenedor-buscador {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            height: 100vh;
            padding-top: 10px;
        }
        .logo {
            margin-bottom: 10px;
            width: 150px;
            height: auto;
        }
        .buscador {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            /* margin-bottom: 10px; */
        }
        .buscador input {
            height: 45px;
            width: 55%;
            margin-right: 5px;
            font-size: 20;
            border-radius: 8px;
            padding: 0 10px;
        }
        
        .buscador button {
            height: 45px; /* Ajustar la altura del botón */
            font-size: 18px;
            border-radius: 8px; /* Bordes redondeados */
            background-color: #093024; /* Verde del logo */
            color: white;
            border: 1px solid white;
            transition: background-color 0.3s;
        }
        .resultados {
            margin-top: 10px;
            width: 70%;
            text-align: center;
            min-height:  200px;
        }
.buscador button:hover, .buscador button:active {
            background-color: #71A274!important; /* Color del botón al pasar el ratón y al presionarlo */
        }
        .resultados {
            margin-top: 20px;
            width: 70%;
            text-align: center;
            min-height: 300px; /* Establece una altura mínima fija */
        }
        .resultados {
            margin-top: 20px;
            width: 70%;
            text-align: center;
            min-height: 300px;
        }
        .spinner {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .card {
            margin-bottom: 10px;
        }
        .card-title {
            font-size: 5rem;
            font-weight: bold;
            color: #093024; /* Verde del título */
            border: 1px solid white;
            background-color: white;
            margin-top:10px !important;
        }

        .card-desc {
            font-size: 4rem;
            color: #FFC0CB; /* Color de la descripción */
            margin-bottom: 10px !important; /* Ajustar margen inferior de la descripción */
        }

        .card-precio {
            font-size: 8rem;
            font-weight: bold;
            color: white;
            margin-bottom: 10px; /* Ajustar margen inferior del precio */
        }

        .card-subtitle {
            font-size: 3rem;
            color: #B0E0E6!important;
            margin-bottom: 10px; /* Ajustar margen inferior del subtítulo */
        }

        .card-text {
            font-size: 2rem;
            color: #FF69B4; /* Color del texto */
            margin-bottom: 10px; /* Ajustar margen inferior del texto */
        }
        .card-text.text-danger {
            color: #f87171;
            font-size: 2rem;
        }
        .card-text.text-warning {
            color: #facc15;
            font-size: 2rem;
        }
        .card-text.text-success {
            color: #5A9B8D;
            font-size: 2rem;
        }
        @media(orientation:landscape) and ( max-width:1024px){
            .contenedor-buscador{
                padding-top:10px;
            }
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-collapse sidebar-mini login-page">

    <div class="contenedor-buscador">
        <img src="vistas/img/logos/jade10.png" alt="Logo Jade Regaleria" class="logo">
        <div class="buscador" id="buscador">
            <input type="text" id="valorBusqueda" class="form-control rounded" placeholder="¡Tu próxima compra te está esperando, busca ahora!" autocomplete="off">
            <button id="btnBuscar" class="btn btn-warning">Buscar</button>
        </div>
        <div class="resultados animate__animated animate__bounceIn" id="resultados"></div>
        <div class="spinner animate__animated animate__fadeIn animate__headShake" id="spinner">
            <img src="" alt="Loading..." id="spinner-img" style="width: 30rem; height: 30rem;">
        </div>
    </div>

    <script src="vistas/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="vistas/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            let timeout;

            const images = [
                'vistas/img/buscador/1.webp',
                'vistas/img/buscador/2.webp',
                'vistas/img/buscador/3.gif',
                'vistas/img/buscador/4.webp',
                'vistas/img/buscador/5.gif',
                'vistas/img/buscador/6.webp',
                'vistas/img/buscador/7.webp',
                'vistas/img/buscador/9.gif',
                'vistas/img/buscador/10.gif'
            ];

            const notFoundImages = [
                'vistas/img/buscador/no-encontrado/1.gif',
                'vistas/img/buscador/no-encontrado/2.webp',
                'vistas/img/buscador/no-encontrado/3.webp',
                'vistas/img/buscador/no-encontrado/4.webp',
                'vistas/img/buscador/no-encontrado/5.gif',
                'vistas/img/buscador/no-encontrado/6.gif',
                'vistas/img/buscador/no-encontrado/7.webp',
                'vistas/img/buscador/no-encontrado/8.gif'
            ];

            function getRandomImage(imagesArray) {
                const randomIndex = Math.floor(Math.random() * imagesArray.length);
                return imagesArray[randomIndex];
            }

            function startTimeout(duration) {
                clearTimeout(timeout);
                timeout = setTimeout(function() {
                    $("#resultados").html('');
                }, duration);
            }

            function buscarProducto() {
                var valorBusqueda = $("#valorBusqueda").val();
                $("#resultados").html(''); // Limpiar resultados anteriores
                $("#spinner-img").attr('src', getRandomImage(images)); // Establecer imagen aleatoria
                $("#spinner").show(); // Mostrar el spinner
                $("#buscador").hide(); // Ocultar el input y el botón
                setTimeout(function() { // Esperar 3 segundos
                    $.ajax({
                        url: "ajax/buscar-producto.ajax.php",
                        method: "POST",
                        data: { valorBusqueda: valorBusqueda },
                        success: function(data) {
                            $("#spinner").hide(); // Ocultar el spinner
                            if ($.trim(data) === '<div class="alert alert-danger" role="alert">Producto no encontrado</div>') {
                                $("#resultados").html('<img src="' + getRandomImage(notFoundImages) + '" alt="No encontrado" style="width: 30rem; height: 30rem;">');
                                startTimeout(8000); // 8 segundos para la imagen de no encontrado
                            } else {
                                $("#resultados").html(data);
                                startTimeout(40000); // 40 segundos para los resultados normales
                            }
                            $("#buscador").show(); // Mostrar el input y el botón
                            $("#valorBusqueda").val('').focus();
                        },
                        error: function() {
                            $("#spinner").hide(); // Ocultar el spinner en caso de error
                            $("#resultados").html('<p>Error al realizar la búsqueda</p>');
                            $("#buscador").show(); // Mostrar el input y el botón
                            $("#valorBusqueda").focus();
                        }
                    });
                }, 3000); // 3 segundos = 3000 ms
            }

            $("#btnBuscar").click(function() {
                buscarProducto();
            });

            $("#valorBusqueda").on('keypress', function(e) {
                if (e.which == 13) { // Código ASCII para la tecla Enter
                    buscarProducto();
                }
            });
            $(document).click(function() {
                $("#valorBusqueda").focus();
            });
            $("#valorBusqueda").focus();
        });
    </script>
</body>
</html>
