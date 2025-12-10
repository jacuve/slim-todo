# Usar una imagen base ligera de PHP-FPM (Alpine es popular por su tamaño reducido)
FROM php:8.3-fpm-alpine

ENV APP_ENV=docker

# Instalar extensiones PHP y dependencias del sistema necesarias
RUN apk add --no-cache libpq-dev git

# Instalar extensiones PHP (ej: pdo_pgsql, opcache, etc. Ajusta según tus necesidades de Slim)
RUN docker-php-ext-install pdo_pgsql opcache
RUN docker-php-ext-enable opcache

# Instalar Composer globalmente
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Copiar el código de la aplicación (esto se hace generalmente con volúmenes en desarrollo, ver docker-compose)
COPY . .

# El comando por defecto es ejecutar php-fpm
CMD ["php-fpm"]
