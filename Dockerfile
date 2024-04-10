FROM debian:bookworm-slim@sha256:3d5df92588469a4c503adbead0e4129ef3f88e223954011c2169073897547cac

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
