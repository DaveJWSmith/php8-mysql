FROM php:fpm-alpine

ENV TERM="xterm" \
    LANG="C.UTF-8" \
    LC_ALL="C.UTF-8"
ENV DOCKER_CONF_HOME=/opt/docker/
ENV APPLICATION_USER=application \
    APPLICATION_GROUP=application \
    APPLICATION_PATH=/app \
    APPLICATION_UID=1000 \
    APPLICATION_GID=1000

RUN docker-php-ext-install mysqli pdo pdo_mysql
