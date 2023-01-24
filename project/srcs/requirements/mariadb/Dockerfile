FROM alpine:3.17

#устанавливаем mariadb и mariadb-client, а ещё папку, которая и так будет, 
# но если создадим сами хуже не будет.
RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client && mkdir /var/run/mysqld

#открываем порт 3306. Он вроде и так по умолчанию открыт, но пусть будет
EXPOSE 3306


# надо ли аргументы здесь, или можно обойтись толь .env?
# ARG DB_NAME \
#     DB_USER \
#     DB_PASS \
#     MYSQL_ROOT_PASSWORD

#копируем скрипт из tools в корень образа
COPY tools/my_setting.sh .

RUN sh my_setting.sh && rm my_setting.sh