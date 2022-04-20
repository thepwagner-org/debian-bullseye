FROM debian:bullseye-slim@sha256:41684153abb337500e821714d231d9a12117e6309eb285a4a722478792377023

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
