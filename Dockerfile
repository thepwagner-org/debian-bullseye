FROM debian:bullseye-slim@sha256:1afe3e9ea7696521f18eee3c6452f125b909d28ce6f00153c3d165b614370e73

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
