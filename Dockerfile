FROM debian:bullseye-slim@sha256:7acda01e55b086181a6fa596941503648e423091ca563258e2c1657d140355b1

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
