FROM debian:testing

WORKDIR /app

RUN apt-get update &&\
        apt-get install -y python

ADD main.py main.py

EXPOSE 80

CMD python2.7 main.py
