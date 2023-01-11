FROM debian:bullseye-slim@sha256:8c60e19bd285355325cf3e1d39223317ec5847346726c5ae88a037c01322b426

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
