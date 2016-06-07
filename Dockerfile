FROM php:5.5-apache

RUN apt-get update && apt-get install git -y && apt-get clean
RUN git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
WORKDIR /opt/letsencrypt
RUN ./letsencrypt-auto --help

