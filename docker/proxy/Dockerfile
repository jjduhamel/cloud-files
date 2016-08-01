FROM hbpcb/ubuntu
MAINTAINER John Duhamel <john.duhamel@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx

COPY sites-available/* /etc/nginx/sites-available/

CMD nginx -g 'daemon off;'
