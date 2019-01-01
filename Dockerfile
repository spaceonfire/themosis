FROM spaceonfire/nginx-php-fpm:1.3.1

ENV SOF_PRESET=wordpress \
	PAGER=more \
	WEBROOT=/var/www/html/htdocs

ARG APPLICATION_ENV

COPY composer.json composer.lock ./
RUN composer update
COPY ./ ./
