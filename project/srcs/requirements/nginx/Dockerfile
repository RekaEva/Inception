#родительский образ
FROM alpine:3.16  

ARG DOMAIN_NAME cpollito.42.fr   
#!!!!!!!!!!!!!!!!!!!!!!!    переменная!!!!!!

# обнавляем софт и устанавливаем nginx не сохраняя исходники
# в кэше (--no-cache nginx) и openssl
RUN apk-get update && apk upgrate && add --no-cache nginx php-fpm 

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout \
# 	/etc/ssl/certs/$DOMAIN_NAME.key -out /etc/ssl/certs/$DOMAIN_NAME.crt \
# 	-subj "/C=RU/ST=Moscow/L=Moscow/O=Shool_21/OU=Ecole_42/CN=nginx/emailAddress=mnathali@student.21-school.ru"

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout \
    /etc/ssl/private/$DOMAIN_NAME.key -out /etc/ssl/certs/$DOMAIN_NAME.crt\
    -subj "/C=RU/ST=Moscow/L=Moscow/O=Shool_21/OU=Ecole_42/CN=nginx/emailAddress=cpollito@student.21-school.ru"  
####### Уточнить последнюю строчку            !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#открываем порт
EXPOSE 443

COPY conf/nginx.conf /etc/nginx/http.d/

# запускаем nginx напрямую, а не в режиме демона
CMD ["nginx", "-g", "daemon off;"]

