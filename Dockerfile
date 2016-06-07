FROM ubuntu:14.04

RUN apt-get update && apt-get install git && apt-get clean
RUN git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
WORKDIR /opt/letsencrypt
RUN ./letsencrypt-auto --help

CMD["/bin/bash"]
