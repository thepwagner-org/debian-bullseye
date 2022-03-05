FROM debian:bullseye-slim@sha256:d5cd7e54530a8523168473a2dcc30215f2c863bfa71e09f77f58a085c419155b

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
