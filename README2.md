# Gotas & Distribuidora — Docker Stack
PHP 8.2 + Apache + MySQL + nginx-proxy + Let’s Encrypt + phpMyAdmin + TCPDF

## Requisitos
- Docker ≥ 24 y Docker Compose v2
- DNS (producción) a tu servidor:
  - gotasdecristal.com, www.gotasdecristal.com
  - distribuidoraglavas.com, www.distribuidoraglavas.com
  - admin.gotasdecristal.com, admin.distribuidoraglavas.com

## Estructura esperada
```
.
├─ docker-compose.yml
├─ docker-compose.local.yml
├─ docker-compose.prod.yml
├─ gotas/
│  ├─ Dockerfile
│  ├─ php.ini
│  ├─ db/localhost.sql
│  └─ www/
└─ distribuidora/
   ├─ Dockerfile
   ├─ php.ini
   ├─ db/localhost.sql
   └─ www/
```

## Hosts locales
Agregá en tu archivo hosts:
```
127.0.0.1  gotas.local
127.0.0.1  distribuidora.local
```

## Accesos rápidos
### phpMyAdmin (local)
- URL: http://localhost:8080
- Server: distribuidora_db o gotas_db
- User/Pass: user/userpass o root/root

### phpMyAdmin (producción)
- https://admin.gotasdecristal.com
- https://admin.distribuidoraglavas.com

### Webs (local)
- http://gotas.local
- http://distribuidora.local

## Conexión BD por defecto
**Distribuidora**: servidor `distribuidora_db`, usuario `root`, contraseña `root`.

**Gotas**: servidor `gotas_db`, usuario `root`, contraseña `root`.

> Usuario app alternativo: `user / userpass`.

## Levantar LOCAL
1) Build imágenes:
```
docker compose build gotas_web distribuidora_web
```
2) Up con override local (habilita phpMyAdmin en :8080):
```
docker compose -f docker-compose.yml -f docker-compose.local.yml up -d
```
3) Instalar TCPDF en cada sitio:
```
docker exec -it gotas_web bash
cd /var/www/html && composer require tecnickcom/tcpdf
exit

docker exec -it distribuidora_web bash
cd /var/www/html && composer require tecnickcom/tcpdf
exit
```
4) Probar rápido (crear factura.php):
```
<?php
require __DIR__ . '/vendor/autoload.php';
$pdf = new TCPDF(); $pdf->AddPage();
$pdf->Cell(0,10,'Factura OK',0,1,'C');
$pdf->Output('factura.pdf','I');
```
Navegar: http://gotas.local/factura.php o http://distribuidora.local/factura.php

## Levantar PRODUCCIÓN
1) Asegurar DNS A -> IP del server para dominios y admin.*.
2) Up con override prod:
```
docker compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```
3) Instalar TCPDF en cada web (igual que en local).
4) Accesos: webs por HTTPS y phpMyAdmin en admin.*.

## Comandos útiles
```
# Ver contenedores
docker ps
# Logs
docker logs -f gotas_web
docker logs -f distribuidora_web
# Rebuild una web
docker compose build gotas_web && docker compose up -d gotas_web
# Entrar al contenedor
docker exec -it distribuidora_web bash
# Apagar todo
docker compose down
```

## Troubleshooting
- `composer: command not found`: asegurá `COPY --from=composer:2 /usr/bin/composer /usr/bin/composer` en Dockerfile y rebuild.
- Error oniguruma/mbstring: instalá `libonig-dev` en Dockerfile y rebuild.
- `vendor/autoload.php` no existe: corré `composer require tecnickcom/tcpdf` dentro de `/var/www/html` del contenedor.
- Orphan containers: `docker compose up -d --remove-orphans`.

## .gitignore sugerido
```
/gotas/www/vendor/
/distribuidora/www/vendor/
```

## Checklist cambios en producción
1. Subir `docker-compose.yml` + `docker-compose.prod.yml`.
2. Subir Dockerfiles en `./gotas` y `./distribuidora`.
3. `docker compose -f docker-compose.yml -f docker-compose.prod.yml up -d`.
4. Instalar TCPDF en cada web (Composer dentro del contenedor). 
5. Subir el archivo factura para ver que este funcionando en la raiz de cada proyecto


(--no-deps evita tocar las DB).

✅ Reiniciar proxy/letsencrypt/phpmyadmin no afecta a MySQL.
❌ NO uses docker compose down -v (el -v borra volúmenes = datos).
❌ No renombres los servicios de DB ni los volúmenes en el compose.
❌ Cambiar MYSQL_* no resetea una DB ya inicializada, pero tampoco cambia credenciales existentes; se usan solo en el primer arranque.

```
# Distribuidora
docker exec distribuidora_db sh -c 'mysqldump -uroot -proot --databases distribuidora' > distribuidora_$(date +%F).sql

# Gotas
docker exec gotas_db sh -c 'mysqldump -uroot -proot --databases gotas' > gotas_$(date +%F).sql

```