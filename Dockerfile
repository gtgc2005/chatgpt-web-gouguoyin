FROM alpine:3.17

RUN mkdir -p /app
RUN apk add --update caddy

COPY chatgpt /app/chatgpt
COPY admin /app/admin
COPY Caddyfile /app/Caddyfile
COPY .env /app/.env

WORKDIR /app

EXPOSE 80
EXPOSE 81

COPY startup.sh /app/startup.sh
RUN chmod +x /app/startup.sh; mkdir /data
CMD ["/app/startup.sh"]
