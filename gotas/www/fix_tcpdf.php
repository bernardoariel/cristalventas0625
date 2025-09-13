<?php
$file = '/var/www/html/extensiones/tcpdf/tcpdf.php';
$content = file_get_contents($file);

// Reemplazar los tres usos de each()
$content = str_replace(
    'while (list($key, $val) = each($prop))',
    'foreach ($prop as $key => $val)',
    $content
);

$content = str_replace(
    'while (list($id, $name) = each($attr_array[1]))',
    'foreach ($attr_array[1] as $id => $name)',
    $content
);

$content = str_replace(
    'while (list($id, $name) = each($style_array[1]))',
    'foreach ($style_array[1] as $id => $name)',
    $content
);

file_put_contents($file, $content);
echo "Cambios aplicados correctamente.\n"; 