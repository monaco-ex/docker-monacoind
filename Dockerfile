FROM ubuntu:16.04

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:visvirial/monacoin && \
    apt update && \
    apt install -y monacoind

EXPOSE 9401 9402 29000
VOLUME /root/.monacoin

ENTRYPOINT [ "/usr/bin/monacoind" ]
