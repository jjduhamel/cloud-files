FROM ubuntu:14.04
MAINTAINER John Duhamel <john.duhamel@gmail.com>

RUN apt-get update
RUN apt-get install -y automake autotools-dev g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config wget

RUN wget https://github.com/s3fs-fuse/s3fs-fuse/archive/v1.80.tar.gz -O /tmp/s3fs.tar.gz
RUN cd /tmp && \
    tar -xzf /tmp/s3fs.tar.gz
RUN cd /tmp/s3fs-fuse-1.80 && \
    ./autogen.sh && \
    ./configure --prefix=/usr && \
    make && \
    make install

COPY entrypoint.sh /opt
ENTRYPOINT [ "/opt/entrypoint.sh" ]
CMD [ "/bin/bash" ]
