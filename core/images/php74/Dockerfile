FROM node:10.15.3-alpine

MAINTAINER leo <liyan3279@126.com>

# Mirror mirror switch to Ali-OSM (Alibaba Open Source Mirror Site) - http://mirrors.aliyun.com/
RUN echo 'https://mirrors.aliyun.com/alpine/edge/main' > /etc/apk/repositories  && \
	echo 'https://mirrors.aliyun.com/alpine/edge/community' >> /etc/apk/repositories
	# && echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# ensure www-data user exists
RUN set -x \
	&& addgroup -g 1100 -S www-data \
	&& adduser -u 1100 -D -S -G www-data www-data
# 1100 is the standard uid/gid for "www-data" in Alpine

RUN apk update && apk upgrade && \
    apk add --update --no-cache \
        curl \
        php7 \
        php7-common \
        php7-fpm \
        php7-dom \
        php7-mbstring \
        php7-json \
        php7-bcmath \
        php7-ctype \
        php7-curl \ 
        php7-gd \ 
        php7-intl \
        # php7-mcrypt \
        php7-openssl \
        php7-pdo \
        php7-pdo_mysql \
        php7-simplexml \
        php7-soap \
        php7-xsl \ 
        php7-zip \
        php7-iconv \
        php7-phar \ 
        php7-xmlwriter \
        php7-opcache \
        php7-tokenizer \
        php7-session \
        php7-fileinfo \
        php7-xml \
	php7-sockets\
        php7-sodium\
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

#install n98-magerun2 tool
RUN wget https://files.magerun.net/n98-magerun2.phar && \
    chmod +x ./n98-magerun2.phar && \
    mv ./n98-magerun2.phar /usr/local/bin/n98
    

#install mg2-codegen tool
RUN  wget https://github.com/staempfli/magento2-code-generator/releases/download/1.11.2/mg2-codegen.phar && \
     chmod +x ./mg2-codegen.phar && \
     mv ./mg2-codegen.phar /usr/local/bin/mg2-codegen
    
# Set Workdir
WORKDIR /var/www/html

# Expose ports
EXPOSE 9073

# Entry point
CMD ["/usr/sbin/php-fpm7", "-R", "--nodaemonize"]
