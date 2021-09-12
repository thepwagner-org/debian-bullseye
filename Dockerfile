FROM registry.k8s.pwagner.net/library/squid:latest AS cert

FROM debian:bullseye-slim@sha256:e3ed4be20c22a1358020358331d177aa2860632f25b21681d79204ace20455a6

COPY proxy.conf /etc/apt/apt.conf.d/99proxy
COPY sources.list /etc/apt/sources.list

COPY --from=cert /cacert.pem /usr/local/share/ca-certificates/squid.crt

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get install -y ca-certificates && \
  update-ca-certificates && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
