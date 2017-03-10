FROM    eb-base
MAINTAINER  youngnac@gmail.com

#RUN apt-get -y update
#RUN apt-get -y install python3
#RUN apt-get -y install python3-pip
#RUN apt-get -y install nginx

COPY    . /srv/app
WORKDIR /srv/app

COPY .conf-secret/uwsgi-app.ini /etc/uwsgi/sites/app.ini
