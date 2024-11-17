FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN echo "Hello world" > /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]