FROM ubuntu:18.04
RUN apt-get -y install
RUN apt-get install - nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN sed -i "0;/nginx/docker-nginx/i" /usr/share/nginx/html/index.html
CMD [ "nginx" ]
