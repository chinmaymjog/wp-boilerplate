FROM wordpress:php7.4-fpm-alpine

COPY ./plugins /var/www/html/wp-content/plugins
COPY ./themes /var/www/html/wp-content/themes
COPY ./php.ini /usr/local/etc/php/conf.d/
