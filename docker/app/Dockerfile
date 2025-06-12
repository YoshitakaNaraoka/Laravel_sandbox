FROM php:8.2-fpm

ENV TZ Asia/Tokyo

# install Library
RUN apt-get update && \
	apt-get install -y git unzip libzip-dev libicu-dev libonig-dev && \
	php8.3-dom \
        php8.3-curl \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* \

	docker-php-ext-install intl pdo_mysql zip bcmath
  
# config file COPY
COPY ./docker/app/php.ini /usr/local/etc/php/php.ini

# install Composer
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

WORKDIR /app