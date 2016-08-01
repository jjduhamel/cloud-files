FROM hbpcb/ubuntu
MAINTAINER John Duhamel <john.duhamel@gmail.com>

WORKDIR /data
VOLUME /data

RUN apt-get update
RUN apt-get install -y gitit pandoc
RUN git config --global user.email wiki@homebrewpcb.com

COPY wiki.conf .

CMD gitit -f wiki.conf
