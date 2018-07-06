FROM httpd:2.4

RUN apt-get update -y         && \
    apt-get install vim -y

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./cgi-bin/ /usr/local/apache2/cgi-bin/

