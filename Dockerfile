FROM debian:bullseye-slim@sha256:a42bb0c298cc798f1d3a6c3ee942c54db6919373c88250255ff66aed2fdb7e41

COPY sources.list /etc/apt/sources.list

RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
