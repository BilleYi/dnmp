FROM php:8.1-fpm-alpine3.20

MAINTAINER peter <peter@xulukun.cn>

# Mirror mirror switch to Ali-OSM (Alibaba Open Source Mirror Site) - http://mirrors.aliyun.com/
# RUN echo 'http://mirrors.ustc.edu.cn/alpine/v3.9/main' > /etc/apk/repositories  && \
	# echo 'http://mirrors.ustc.edu.cn/alpine/v3.9/community' >> /etc/apk/repositories
	# && echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

# ensure www-data user exists
# http://mirrors.ustc.edu.cn/alpine/v3.9/main/
# RUN addgroup -g 1100 -S www-data
# RUN adduser -u 1100 -D -S -G www-data www-data
# 1100 is the standard uid/gid for "www-data" in Alpine

RUN apk update && apk upgrade
RUN    apk add --update --no-cache icu-dev zlib-dev libpng-dev freetype-dev
RUN         docker-php-ext-configure  gd --with-freetype
RUN         docker-php-ext-install pdo_mysql intl gd
         #composer \
RUN         rm -rf /var/cache/apk/*
# Set Workdir
WORKDIR /var/www/html

# Expose ports
EXPOSE 9000

# Entry point
CMD ["/usr/local/sbin/php-fpm", "-R", "--nodaemonize"]
