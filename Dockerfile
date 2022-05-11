FROM debian:bullseye-slim@sha256:fbaacd55d14bd0ae0c0441c2347217da77ad83c517054623357d1f9d07f79f5e

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
