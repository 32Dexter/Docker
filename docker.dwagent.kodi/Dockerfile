FROM  arm32v7/ubuntu:16.04
COPY ./qemu-arm-static /usr/bin/qemu-arm-static

COPY ./dwagent.sh /home
COPY ./ngrok /home
COPY ./start.sh /
COPY ./script.sh /
COPY ./script.dwagent.sh /

USER root

VOLUME /datacenter

RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install -y python-dev
RUN apt-get install -y openssh-client
RUN apt-get install -y expect
RUN chmod +x /start.sh
RUN chmod +x /home/dwagent.sh
RUN chmod +x /script.sh
RUN chmod +x /script.dwagent.sh

ENTRYPOINT ./start.sh && tail -f /dev/null || ./script.sh && tail -f /dev/null || /bin/bash
