FROM golang
WORKDIR /usr/src/app
RUN git clone https://github.com/gtgc2005/chatgpt-web-gouguoyin.git
WORKDIR /usr/src/app/chatgpt-web-gouguoyin
CMD [ "./goravel" ]
