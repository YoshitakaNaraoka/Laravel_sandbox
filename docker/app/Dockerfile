FROM php:8.2-fpm

ENV TZ Asia/Tokyo

# install System Libraries
# 必要なシステムパッケージをまとめてインストール
RUN apt-get update && \
    apt-get install -y \
        git \
        unzip \
        libzip-dev \
        libicu-dev \
        libonig-dev \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Install PHP Extensions using docker-php-ext-install
# dom と curl はここに追加
RUN docker-php-ext-install intl pdo_mysql zip bcmath dom curl

# config file COPY
COPY ./docker/app/php.ini /usr/local/etc/php/php.ini

# install Composer
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

WORKDIR /app