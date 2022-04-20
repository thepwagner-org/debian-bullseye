FROM debian:bullseye-slim@sha256:96f75b0a9c81d6367be5a0cff21671e767de9cd3cfd69a9eda7867901563ec9c

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
