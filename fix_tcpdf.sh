#!/bin/bash
sed -i 's/while (list($key, $val) = each($prop))/foreach ($prop as $key => $val)/g' /var/www/html/extensiones/tcpdf/tcpdf.php
sed -i 's/while (list($id, $name) = each($attr_array\[1\]))/foreach ($attr_array[1] as $id => $name)/g' /var/www/html/extensiones/tcpdf/tcpdf.php
sed -i 's/while (list($id, $name) = each($style_array\[1\]))/foreach ($style_array[1] as $id => $name)/g' /var/www/html/extensiones/tcpdf/tcpdf.php 