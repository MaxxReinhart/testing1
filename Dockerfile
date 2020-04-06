FROM centos:7
MAINTAINER Maxx Demidov <maxx.reinhart@gmail.com>
RUN yum install -y epel-release && yum install -y nginx
RUN yum clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD [ "nginx" ]
