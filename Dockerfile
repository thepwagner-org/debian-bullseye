FROM debian:bookworm-slim@sha256:40b107342c492725bc7aacbe93a49945445191ae364184a6d24fedb28172f6f7

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
