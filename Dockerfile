FROM golang
RUN git clone https://github.com/gtgc2005/chatgpt-web-gouguoyin.git
CMD [ "nohup ./goravel &" ]
