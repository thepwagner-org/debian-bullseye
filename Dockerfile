FROM debian:bullseye-slim@sha256:b6a622c8242b05bd4dac7d1be3c3febb62ee08de90dd76faaf7936363a18f717

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
