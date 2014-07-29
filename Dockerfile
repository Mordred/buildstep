FROM ubuntu:14.04
MAINTAINER progrium "progrium@gmail.com"

RUN mkdir /build
ADD ./stack/ /build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /build/prepare
RUN ln -s ./libreadline.so.6 /lib/x86_64-linux-gnu/libreadline.so.5
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
