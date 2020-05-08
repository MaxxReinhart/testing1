 FROM ubuntu:18.04
 RUN apt-get -y update
 RUN apt-get install -y nginx
 RUN echo "daemon off;" >> /etc/nginx/nginx.conf
 RUN sed -i "0,/nginx/s/nginx/docker-nginx/i" /usr/share/nginx/index.html
 COPY ./scr /usr/share/nginx/html
 CMD [ "nginx" ]
