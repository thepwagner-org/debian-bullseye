FROM debian:bullseye-slim@sha256:a811e62769a642241b168ac34f615fb02da863307a14c4432cea8e5a0f9782b8

COPY sources.list /etc/apt/sources.list

# RUN apt-get -q update && \
#   apt-get dist-upgrade -y && \
#   apt-get clean && \
#   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
