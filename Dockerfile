FROM debian:bullseye-slim@sha256:98de137b613dfc97f6b1eaa2f2d0a167eec4c5b72e2a34fd215aa51c3dcc3a86

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
