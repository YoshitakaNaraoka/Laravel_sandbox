FROM php:8.2-fpm

ENV TZ Asia/Tokyo

# install Library
# 必要なパッケージをまとめてインストール
RUN apt-get update && \
    apt-get install -y \
        git \
        unzip \
        libzip-dev \
        libicu-dev \
        libonig-dev \
        php8.3-dom \
        php8.3-curl \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# その後、php-ext-install でPHP拡張機能を有効化
RUN docker-php-ext-install intl pdo_mysql zip bcmath

# config file COPY
COPY ./docker/app/php.ini /usr/local/etc/php/php.ini

# install Composer
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

WORKDIR /app