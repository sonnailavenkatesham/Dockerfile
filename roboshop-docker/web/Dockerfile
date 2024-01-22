FROM nginx
RUN rm -rf /usr/share/nginx/html/*
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD web-page/ /usr/share/nginx/html 
COPY roboshop.conf /etc/nginx/default.d/roboshop.conf