FROM debian:bookworm-slim@sha256:804194b909ef23fb995d9412c9378fb3505fe2427b70f3cc425339e48a828fca

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
