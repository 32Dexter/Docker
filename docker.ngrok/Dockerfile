FROM  arm32v7/ubuntu:16.04
COPY ./qemu-arm-static /usr/bin/qemu-arm-static

USER root

COPY ./ngrok /home/

RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install -y openssh-client

