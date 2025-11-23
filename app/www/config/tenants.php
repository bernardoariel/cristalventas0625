<?php
// config/tenants.php

$tenant = getenv('APP_TENANT') ?: 'distribuidora';

$tenants = [
    'distribuidora' => [
        'DB_HOST'          => 'distribuidora_db',
        'DB_NAME'          => 'distribuidora',
        'DB_USER'          => 'user',
        'DB_PASS'          => 'userpass',
        'APP_NAME'         => 'Distribuidora Glavas',
        'BASE_URL'         => 'https://distribuidoraglavas.com',
        'LOGO_PATH'        => 'vistas/img/distribuidora/logo.png',
        'PDF_OUTPUT_PATH'  => 'documentos/distribuidora/', 
        'SKIN_CLASS'       => 'skin-purple',  // ← agregado
        'EMPRESA' => [
            'nombre'    => 'Distribuidora Glavas',
            'cuit'      => '30-12345678-9',
            'direccion' => 'Prolongacion Av. Alberdi',
            'extra'     => 'IVA Respons. Inscripto',
            'telefono'  => '3725 633553'
        ],
        'PLANTILLA_BACK'   => 'vistas/img/distribuidora/plantilla/back.jpg',
    ],
    'gotas' => [
        'DB_HOST'          => 'gotas_db',
        'DB_NAME'          => 'gotas',
        'DB_USER'          => 'user',
        'DB_PASS'          => 'userpass',
        'APP_NAME'         => 'Gotas de Cristal',
        'BASE_URL'         => 'https://gotasdecristal.com',
        'LOGO_PATH'        => 'vistas/img/gotas/logo.png',
        'PDF_OUTPUT_PATH'  => 'documentos/gotas/',
        'SKIN_CLASS'       => 'skin-blue',   // ← agregado
        'EMPRESA' => [
            'nombre'    => 'Gotas de Cristal',
            'cuit'      => '30-12345678-9',
            'direccion' => 'Paso de la patria 1419. Resistencia - Chaco',
            'extra'     => 'IVA Respons. Inscripto',
            'telefono'  => '3625 284497'
        ],
        'PLANTILLA_BACK'   => 'vistas/img/gotas/plantilla/back.jpg',
    ],
];

foreach ($tenants[$tenant] as $key => $value) {
    if ($key === 'EMPRESA') continue; // EMPRESA va aparte
    if (!defined($key)) {
        define($key, $value);
    }
}

$EMPRESA = $tenants[$tenant]['EMPRESA'];