FROM php:cli-alpine

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && sync

RUN install-php-extensions ctype curl dom filter hash intl json libxml mbstring openssl pdo phar simplexml sodium tokenizer xml xmlwriter zip @composer

RUN apk add nodejs-current yarn
