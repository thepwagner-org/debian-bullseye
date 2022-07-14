FROM debian:bullseye-slim@sha256:f576b8067b77ff85c70725c976b7b6cde960898e2f19b9abab3fb148407614e2

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get install -y curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
