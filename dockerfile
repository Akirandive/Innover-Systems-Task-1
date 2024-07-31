FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN service apache2 restart
COPY /index.html  /var/www/html
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl", "-D" , "FOREGROUND" ]

