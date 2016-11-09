#
# Use this dockerfile to run Angular 2 application 
# $ docker build -t angular2-seed .
# $ docker run -d -p 3000:3000 --name angular2-seed angular2-seed:latest
#

FROM ubuntu:xenial
MAINTAINER Dolly Aswin <dolly.aswin@aqilix.com>

COPY docker/nodesource_setup.sh .

RUN bash nodesource_setup.sh \
    && apt-get install nodejs \
    && npm install -g live-server

WORKDIR /angular2-seed
COPY . /angular2-seed
RUN npm install

EXPOSE 3000
CMD npm start
