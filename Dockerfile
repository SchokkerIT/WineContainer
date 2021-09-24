FROM ubuntu:20.04

RUN dpkg --add-architecture i386

RUN apt-get update

RUN apt-get install -y software-properties-common wget

RUN wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -

RUN apt-add-repository "deb http://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main" -y

RUN apt-get install -y --install-recommends winehq-devel

RUN mkdir /home/container