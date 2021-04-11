FROM php:fpm-alpine

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions ctype curl dom filter hash intl json libxml mbstring openssl opcache pdo pdo_mysql mysqlnd mysqli phar redis simplexml sodium tokenizer xml xmlwriter
