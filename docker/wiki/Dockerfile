FROM hbpcb/s3fs
MAINTAINER John Duhamel <john.duhamel@gmail.com>

ENV S3_BUCKET=hbpcb-blog

RUN wget -qO- https://get.haskellstack.org/ | sh
RUN stack setup
RUN wget https://github.com/jgm/gitit/archive/0.12.1.1.tar.gz -O /tmp/gitit.tar.gz
RUN ls
RUN cd /usr/src && \
    tar -xzf /tmp/gitit.tar.gz
RUN cd /usr/src/gitit-0.12.1.1 && \
    stack install

CMD gitit -f ./wiki.conf
