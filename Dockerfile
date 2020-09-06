FROM yiisoftware/yii2-php:7.2-apache

RUN a2enmod rewrite

WORKDIR /app

ADD composer.lock composer.json /app/
# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer.phar \
        --install-dir=/usr/local/bin && \
    composer clear-cache

RUN composer install --prefer-dist --optimize-autoloader --no-dev


ADD yii /app/
ADD ./web /app/web/
ADD ./config /app/config

RUN mkdir -p runtime web/assets && \
    chmod -R 777 runtime web/assets && \
    chown -R www-data:www-data runtime web/assets
