FROM php:8.2-apache

RUN apt-get update && apt-get install -y libpq-dev libzip-dev unzip && \
    docker-php-ext-install pdo pdo_mysql && \
    a2enmod rewrite && \
    sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

COPY php.ini /usr/local/etc/php/