FROM debian:jessie
MAINTAINER Hortonworks

ADD Dockerfile .
RUN apt-get update && apt-get install -y socat
COPY ./start /

CMD ["/start"]
