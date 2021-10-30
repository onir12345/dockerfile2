
FROM ubuntu:latest
MAINTAINER shumail.aaren@gmail.com
RUN apt update
RUN apt install -y nginx \ 
    zip \
    unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/energy.zip /var/www/html
WORKDIR /var/www/html
RUN unzip energy.zip 

RUN cp -rvf  energy/* .
RUN rm -rf  *.zip
#CMD ["/usr/sbin/nginx", "D" ,"FOREGROUND"]
EXPOSE 80
   
