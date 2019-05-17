FROM  arm32v7/ubuntu:16.04
COPY ./qemu-arm-static /usr/bin/qemu-arm-static
COPY ./dwagent.sh /home
COPY ./ngrok /home

USER root

VOLUME /datacenter

RUN apt-get update
# RUN apt-get -y install apt-utils
RUN apt-get install -y net-tools
RUN apt-get install -y python-dev
RUN apt-get install -y openssh-client
RUN apt-get install -y nmap
RUN chmod +x /home/dwagent.sh
ENTRYPOINT ""./datacenter/dwagent/native/dwagsvc start"" && /bin/bash || /bin/bash

