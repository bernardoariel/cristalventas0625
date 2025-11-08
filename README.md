# 📌 Ejemplo para entrar a Distribuidora:

Servidor: ```distribuidora_db```
Usuario: ```root```
Contraseña: ```root```
# 📌 Ejemplo para entrar a Gotas:

Servidor: 
```gotas_db```
Usuario: ```root```
Contraseña: ```root```

127.0.0.1 distribuidora.local
127.0.0.1 gotas.local

# 🚀 Cómo levantar

## Local

``` docker compose -f docker-compose.yml -f docker-compose.local.yml up -d ```


➡ Navegá a: http://localhost:8080
Server: distribuidora_db o gotas_db
User/Pass: user/userpass (o root/root)

Producción

docker compose -f docker-compose.yml -f docker-compose.prod.yml up -d


➡ Navegá a:

https://admin.gotasdecristal.com

https://admin.distribuidoraglavas.com

## Cambios en produccion
1. subir docker-compose prod + dockercompse
2. Subir los dockerfile en cada uno

3) Instalar TCPDF

```
docker exec -it distribuidora_web bash
```

```
composer --version   
```
```
composer require tecnickcom/tcpdf
```

---

# 🔄 Copy Changes Script

Script para sincronizar cambios entre **distribuidora** y **gotas**.

## 🚀 Uso

```bash
# Ejecutar desde el directorio cristal/
./copy-changes.sh
```

## 📋 ¿Qué hace?

Copia los archivos modificados/nuevos de `distribuidora/` a `gotas/`:
- ✅ 7 archivos nuevos (vendedores, migraciones, ajax)
- ✅ 12 archivos modificados (vistas, JS, controladores)
- ✅ Crea carpetas automáticamente
- ✅ Muestra progreso y resumen

## 📊 Ejemplo de salida

```
🔄 Copiando archivos modificados de distribuidora a gotas...
📁 Copiando archivos nuevos...
✅ distribuidora/www/ajax/cambiar-vendedor.ajax.php → gotas/www/ajax/cambiar-vendedor.ajax.php
...
📊 Resumen:
   ✅ Archivos copiados: 19
   ❌ Errores: 0
🎉 ¡Sincronización completada exitosamente!
```

**⚠️ Importante:** Ejecutar desde `cristal/` y el script sobreescribe archivos en gotas.