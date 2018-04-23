FROM debian:testing

WORKDIR /app

RUN apt-get update &&\
        apt-get install -y python &&\
        apt-get install -y jython

ADD main.py main.py
ADD httpd.conf /etc/httpd.conf
ADD index.html /var/www/html

EXPOSE 80

CMD jython main.py
