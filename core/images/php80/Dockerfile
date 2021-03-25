FROM node:10.15.3-alpine

MAINTAINER leo <liyan3279@126.com>

# Mirror mirror switch to Ali-OSM (Alibaba Open Source Mirror Site) - http://mirrors.aliyun.com/
RUN echo 'https://mirrors.aliyun.com/alpine/v3.13/main' > /etc/apk/repositories  && \
	echo 'https://mirrors.aliyun.com/alpine/v3.13/community' >> /etc/apk/repositories
	# && echo "http://dl-4.alpinelinux.org/alpine/v3.13/testing" >> /etc/apk/repositories

# ensure www-data user exists
RUN set -x \
	&& addgroup -g 1100 -S www-data \
	&& adduser -u 1100 -D -S -G www-data www-data
# 1100 is the standard uid/gid for "www-data" in Alpine

RUN apk update && apk upgrade && \
    apk add --update --no-cache \
        curl \
        php8 \
        php8-common \
        php8-fpm \
        php8-dom \
        php8-mbstring \
        php8-json \
        php8-bcmath \
        php8-ctype \
        php8-curl \ 
        php8-gd \ 
        php8-intl \
        #php8-mcrypt \
        php8-openssl \
        php8-pdo \
        php8-pdo_mysql \
        php8-simplexml \
        php8-soap \
        php8-xsl \ 
        php8-zip \
        php8-iconv \
        php8-phar \ 
        php8-xmlwriter \
        php8-opcache \
        php8-tokenizer \
        php8-session \
        php8-fileinfo \
        php8-xml \
	php8-sockets\
# composer
        composer \
# git
       #git \
# git ssh
        bash \
        openssh && \
# Cleaning up
    rm -rf /var/cache/apk/*

#RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && \
 #   yarn config set registry https://registry.npm.taobao.org && \
  #  cnpm i -g grunt-cli gulp-cli

# Set Workdir
WORKDIR /var/www/html

# Expose ports
EXPOSE 9080

# Entry point
CMD ["/usr/sbin/php-fpm8", "-R", "--nodaemonize"]
