FROM nginx
RUN rm -rf /usr/share/nginx/html/*
COPY webpage/ /usr/share/nginx/html 
COPY roboshop.conf /etc/nginx/default.d/roboshop.conf