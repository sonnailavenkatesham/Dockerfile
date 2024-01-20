FROM almalinux:8
RUN yum install nginx -y
RUN rm -rf /usr/share/nginx/hmtl/index.html
RUN echo "Hi this page is from ENTRYPOINT command " >/usr/share/nginx/html/index.html
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]