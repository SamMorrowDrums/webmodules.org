FROM ubuntu:14.04
MAINTAINER Sam Morrow info@sammorrowdrums.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install software-properties-common python-software-properties git build-essential gcc make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs

RUN mkdir -p /webmodules
ADD . /webmodules
RUN ls webmodules
RUN cd webmodules && npm install
EXPOSE 8080

WORKDIR /webmodules

ENTRYPOINT ["node", "main.js"]
