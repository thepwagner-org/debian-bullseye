FROM debian:bullseye-slim@sha256:78d776432b979fa7f846d1fda616b3c7f6841bb437451abdc8ffe8d6e9df860a

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
