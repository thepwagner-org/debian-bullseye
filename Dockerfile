FROM debian:bullseye-slim@sha256:171530d298096f0697da36b3324182e872db77c66452b85783ea893680cc1b62

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
