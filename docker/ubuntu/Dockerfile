FROM ubuntu:14.04
MAINTAINER John Duhamel <john.duhamel@gmail.com>

RUN apt-get update
RUN apt-get install -y curl git locales vim wget
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

CMD [ "/bin/bash" ]
