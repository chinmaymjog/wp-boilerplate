FROM wordpress:php7.4-fpm-alpine

ENV WORDPRESS_DB_HOST 
ENV WORDPRESS_DB_USER="wordpress"
ENV WORDPRESS_DB_PASSWORD="wordpress"
ENV WORDPRESS_DB_NAME="wordpress"

COPY ./plugins /var/www/html/wp-content/plugins
COPY ./themes /var/www/html/wp-content/themes
COPY ./php.ini /usr/local/etc/php/conf.d/
