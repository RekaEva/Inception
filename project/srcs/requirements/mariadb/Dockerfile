FROM alpine:3.17

#устанавливаем mariadb и mariadb-client, а ещё папку, которая и так будет, 
# но если создадим сами хуже не будет.
RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client 
#&& mkdir /var/run/mysqld

#открываем порт 3306. не очень нужно, но вдруг
# EXPOSE 3306

#копируем скрипт из tools в корень образа
COPY tools/my_setting.sh .

ARG DB_NAME \
    DB_USER \
    DB_PASS \
    MYSQL_ROOT_PASSWORD

RUN chmod +x my_setting.sh && sh my_setting.sh && rm my_setting.sh

CMD ["mysqld_safe", "--skip-log-error"]

