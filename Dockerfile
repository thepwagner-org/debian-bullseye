FROM debian:bullseye-slim@sha256:5cf1d98cd0805951484f33b34c1ab25aac7007bb41c8b9901d97e4be3cf3ab04

COPY sources.list /etc/apt/sources.list

# FIXME: commit additional packages to main, so the SBOM check will notice a package diff
# don't actually bake ca-certificates into this image
RUN apt-get -q update && \
  apt-get dist-upgrade -y && \
  apt-get install -y --no-install-recommends ca-certificates && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
