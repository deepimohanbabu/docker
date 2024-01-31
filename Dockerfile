FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2 curl
COPY index.html /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
WORKDIR /var/www/html
EXPOSE 80
