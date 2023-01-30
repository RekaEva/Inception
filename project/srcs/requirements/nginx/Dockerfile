#родительский образ
FROM alpine:3.16  

# ARG DOMAIN_NAME

# обнавляем софт и устанавливаем nginx не сохраняя исходники
# в кэше (--no-cache nginx) и openssl
RUN apk update && apk upgrade && apk add --no-cache nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout \
    /etc/ssl/certs/cpollito.42.fr.key -out /etc/ssl/certs/cpollito.42.fr.crt\
    -subj "/C=RU/ST=Moscow/L=Moscow/O=Shool_21/OU=Ecole_42/CN=nginx/emailAddress=cpollito@student.21-school.ru"  
# тут нужно использовать переменные!!!!

#открываем порт
EXPOSE 443

COPY conf/nginx.conf /etc/nginx/http.d/
# RUN rm /etc/nginx/http.d/default.conf (если запускать уже с wordpress, то не надо)

# запускаем nginx напрямую, а не в режиме демона
CMD ["nginx", "-g", "daemon off;"]

