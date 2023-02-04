<<<<<<< HEAD
=======
# FROM alpine:3.17

# RUN	apk update && apk upgrade && apk add --no-cache nginx

# RUN echo "server {" > /etc/nginx/http.d/default.conf && \
#     echo "root    /var/www/localhost/htdocs;" >> /etc/nginx/http.d/default.conf && \
#     echo "location / {" >> /etc/nginx/http.d/default.conf && \
#     echo "    try_files \$uri /index.html;" >> /etc/nginx/http.d/default.conf && \
#     echo "}}" >> /etc/nginx/http.d/default.conf

# COPY /conf/* /var/www/localhost/htdocs

# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

>>>>>>> f07fc9f5ef116034a6f9fb2755a17decb652521c
FROM alpine:3.16
RUN	apk update && apk upgrade && apk add --no-cache nginx

RUN echo "server {" > /etc/nginx/http.d/default.conf && \
    echo "root    /var/www;" >> /etc/nginx/http.d/default.conf && \
    echo "location / {" >> /etc/nginx/http.d/default.conf && \
    echo "    try_files \$uri /index.html;" >> /etc/nginx/http.d/default.conf && \
    echo "}}" >> /etc/nginx/http.d/default.conf

COPY requirements/bonus/website/conf/* /var/www/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]