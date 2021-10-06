FROM debian:bullseye-slim@sha256:753ead7d42d8f28fb2b6a0e20fac73505fb59c91974193c352f103bc6e50f654

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
