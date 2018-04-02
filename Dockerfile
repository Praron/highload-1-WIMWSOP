FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update &&\
        apt-get install -y python &&\
        apt-get install -y jython

ADD main.py main.py
ADD httpd.conf httpd.conf
ADD index.html /var/www/html

EXPOSE 80

CMD jython main.py
