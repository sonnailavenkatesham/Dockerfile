FROM nginx
RUN rm -rf /usr/share/nginx/html/*
ADD webpage/ /usr/share/nginx/html 
COPY roboshop.conf /etc/nginx/default.d/roboshop.conf