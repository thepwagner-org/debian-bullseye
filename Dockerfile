FROM debian:bullseye-slim@sha256:dacf278785a4daa9de07596ec739dbc07131e189942772210709c5c0777e8437

ARG CIBUILD=""

COPY proxy.conf /etc/apt/apt.conf.d/99proxy
RUN test -z "${CIBUILD}" || rm /etc/apt/apt.conf.d/99proxy
COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
