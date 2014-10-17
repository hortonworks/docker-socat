FROM debian:jessie
MAINTAINER lajos.papp@sequenceiq.com

RUN apt-get update && apt-get install -y socat
COPY ./start /

CMD ["/start"]
