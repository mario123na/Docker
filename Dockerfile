FROM ubuntu
RUN apt-get update
RUN apt-get install -y iputils-ping net-tools vim 
RUN apt-get install -y apache2
#RUN apachectl start
#RUN service apache2 restart
#EXPOSE 80
##VOLUMEN##
ADD paginas /var/www/html
VOLUME ["/var/www/html"]
RUN mkdir /datos1
COPY entrypoint.sh /datos1
EXPOSE 80
CMD /datos1/entrypoint.sh
