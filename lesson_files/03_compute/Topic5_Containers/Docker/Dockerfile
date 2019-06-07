FROM centos:latest
MAINTAINER FelineInc
RUN yum -y install httpd
COPY index.html containercat.jpg /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80

