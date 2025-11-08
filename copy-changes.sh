#!/bin/bash

echo "🔄 Copiando archivos modificados de distribuidora a gotas..."
echo "========================================================="

# Contador de archivos copiados
copied=0
failed=0

# Función para copiar archivo
copy_file() {
    local src="$1"
    local dst="$2"
    
    if [ -f "$src" ]; then
        # Crear directorio de destino si no existe
        mkdir -p "$(dirname "$dst")"
        
        # Copiar archivo
        cp "$src" "$dst"
        
        if [ $? -eq 0 ]; then
            echo "✅ $src → $dst"
            ((copied++))
        else
            echo "❌ Error copiando $src"
            ((failed++))
        fi
    else
        echo "⚠️  Archivo no encontrado: $src"
        ((failed++))
    fi
}

echo "📁 Copiando archivos nuevos..."
copy_file "distribuidora/db/migrations/30-10-20251-1-Alter-Table Ventas.sql" "gotas/db/migrations/30-10-20251-1-Alter-Table Ventas.sql"
copy_file "distribuidora/db/migrations/30-10-20251-2-Create-Vendedores-table.sql" "gotas/db/migrations/30-10-20251-2-Create-Vendedores-table.sql"
copy_file "distribuidora/www/ajax/cambiar-vendedor.ajax.php" "gotas/www/ajax/cambiar-vendedor.ajax.php"
copy_file "distribuidora/www/controladores/vendedores.controlador.php" "gotas/www/controladores/vendedores.controlador.php"
copy_file "distribuidora/www/modelos/vendedores.modelo.php" "gotas/www/modelos/vendedores.modelo.php"
copy_file "distribuidora/www/vistas/js/vendedores.js" "gotas/www/vistas/js/vendedores.js"
copy_file "distribuidora/www/vistas/modulos/colores-vendedores.php" "gotas/www/vistas/modulos/colores-vendedores.php"

echo ""
echo "📝 Copiando archivos modificados..."
copy_file "distribuidora/www/controladores/ventas.controlador.php" "gotas/www/controladores/ventas.controlador.php"
copy_file "distribuidora/www/index.php" "gotas/www/index.php"
copy_file "distribuidora/www/modelos/ventas.modelo.php" "gotas/www/modelos/ventas.modelo.php"
copy_file "distribuidora/www/vistas/js/crear-ventas.js" "gotas/www/vistas/js/crear-ventas.js"
copy_file "distribuidora/www/vistas/js/productos.js" "gotas/www/vistas/js/productos.js"
copy_file "distribuidora/www/vistas/js/ventas.js" "gotas/www/vistas/js/ventas.js"
copy_file "distribuidora/www/vistas/modulos/crear-venta.php" "gotas/www/vistas/modulos/crear-venta.php"
copy_file "distribuidora/www/vistas/modulos/ctacorriente.php" "gotas/www/vistas/modulos/ctacorriente.php"
copy_file "distribuidora/www/vistas/modulos/footer.php" "gotas/www/vistas/modulos/footer.php"
copy_file "distribuidora/www/vistas/modulos/menu.php" "gotas/www/vistas/modulos/menu.php"
copy_file "distribuidora/www/vistas/modulos/ventas.php" "gotas/www/vistas/modulos/ventas.php"
copy_file "distribuidora/www/vistas/plantilla.php" "gotas/www/vistas/plantilla.php"

echo ""
echo "========================================================="
echo "📊 Resumen:"
echo "   ✅ Archivos copiados: $copied"
echo "   ❌ Errores: $failed"
echo ""

if [ $failed -eq 0 ]; then
    echo "🎉 ¡Sincronización completada exitosamente!"
else
    echo "⚠️  Sincronización completada con $failed errores"
fi