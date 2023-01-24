#родительский образ
FROM alpine:3.16  

# обнавляем софт и устанавливаем nginx не сохраняя исходники
# в кэше (--no-cache nginx) и openssl
RUN apk-get update && apk upgrate && add --no-cache nginx openssl

#открываем порт
EXPOSE 443

# запускаем nginx напрямую, а не в режиме демона
CMD ["nginx", "-g", "daemon off;"]
