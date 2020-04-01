FROM centos:7
MAINTAINER Maxx Demidov <maxx.reinhart@gmail.com>
RUN yum install -y epel-release && yum install -y nginx
RUN yum clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN sed -i "0,/nginx/s/nginx/docker-nginx/i" /usr/share/nginx/html/index.html
CMD [ "nginx" ]
