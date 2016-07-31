FROM hbpcb/s3fs
MAINTAINER John Duhamel <john.duhamel@gmail.com>

ENV S3_BUCKET=hbpcb-blog

RUN apt-get update
RUN apt-get install webfs

CMD webfsd -f index.html -F
