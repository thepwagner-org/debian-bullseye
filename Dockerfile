FROM debian:bullseye-slim@sha256:9404b05bd09b57c76eccc0c5505b3c88b5feccac808d9b193a4fbac87bb44745

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
