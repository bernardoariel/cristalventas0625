FROM php:8.2-apache

# Paquetes + deps (incluye oniguruma para mbstring)
RUN apt-get update && apt-get install -y \
    libpq-dev libzip-dev unzip git pkg-config \
    libpng-dev libjpeg62-turbo-dev libfreetype6-dev \
    libonig-dev \
 && docker-php-ext-configure gd --with-freetype --with-jpeg \
 && docker-php-ext-install -j$(nproc) gd mbstring pdo pdo_mysql zip \
 && a2enmod rewrite \
 && sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# (opcional)
COPY php.ini /usr/local/etc/php/

WORKDIR /var/www/html
