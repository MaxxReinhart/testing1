FROM ubuntu:18.04
RUN apt-get update && apt-get -y install
RUN apt-get update && apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN sed -i "0;/nginx/docker-nginx/i" /usr/share/nginx/html/index.html
CMD [ "nginx" ]
