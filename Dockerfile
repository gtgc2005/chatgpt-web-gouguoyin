FROM nginx:stable-alpine

COPY chatgpt /var/www/html/gongying/chatgpt
COPY admin /var/www/html/gongying/admin
COPY nginx.conf /etc/nginx/nginx.conf
COPY goravel /app/goravel
COPY .env /app/.env

WORKDIR /app

EXPOSE 8000
EXPOSE 8001

COPY startup.sh /app/startup.sh
RUN chmod +x /app/startup.sh
CMD ["/app/startup.sh"]
