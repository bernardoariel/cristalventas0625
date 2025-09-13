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