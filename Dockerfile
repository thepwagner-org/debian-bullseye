FROM debian:bullseye-20220125-slim

COPY sources.list /etc/apt/sources.list

# RUN apt-get -q update && \
#   apt-get dist-upgrade -y && \
#   apt-get clean && \
#   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
