FROM debian:bullseye-slim

COPY proxy.conf /etc/apt/apt.conf.d/99proxy
COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
