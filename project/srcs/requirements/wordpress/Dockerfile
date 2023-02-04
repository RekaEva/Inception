
# syntax=docker/dockerfile-upstream:master-labs
FROM alpine:3.17


RUN apk update && apk upgrade && apk add php81-fpm php81-mysqli mariadb-client curl composer \ 
    && composer global require wp-cli/wp-cli \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp \
    && sed -i "s|listen = 127.0.0.1:9000|listen = 9000|g" /etc/php81/php-fpm.d/www.conf && \
        sed -i "s|;listen.owner = nobody|listen.owner = nobody|g" \
            /etc/php81/php-fpm.d/www.conf && \
        sed -i "s|;listen.group = nobody|listen.group = nobody|g" \
            /etc/php81/php-fpm.d/www.conf


RUN mkdir -p /var/www/wordpress /run/mysqld && wp core download --path=/var/www/wordpress --locale=ru_RU

COPY conf/wp-config-create.sh .

RUN chmod a+x wp-config-create.sh 

ENTRYPOINT ["sh", "wp-config-create.sh" ]

# CMD ["./wp-config-create.sh"]
