FROM ubuntu:xenial

WORKDIR /root/

RUN apt-get update && apt-get -qy install \
 libssl-dev \
 make \
 gcc \
 libpcre3-dev \
 unzip \
 curl

COPY . .
RUN ["chmod", "+x", "./run.sh"]
CMD [ "./run.sh" ]