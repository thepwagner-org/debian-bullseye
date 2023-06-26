FROM debian:bookworm-slim@sha256:d8f9d38c21495b04d1cca99805fbb383856e19794265684019bf193c3b7d67f9

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
