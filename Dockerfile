FROM caddy:alpine
WORKDIR /usr/src/app
RUN apk add git
RUN git clone https://github.com/gtgc2005/chatgpt-web-gouguoyin.git
WORKDIR /usr/src/app/chatgpt-web-gouguoyin
CMD [ "sh", "-c","./goravel & caddy run --config Caddyfile" ]
