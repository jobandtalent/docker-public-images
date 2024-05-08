FROM ubuntu:22.04

LABEL "Maintainer"="Jobandtalent Platform team <platform@jobandtalent.com>"

ARG PGREPACK_VERSION=${PGREPACK_VERSION}
ARG BUILDDEPS="build-essential postgresql-server-dev-all libghc-readline-dev libzstd-dev liblz4-dev liblz-dev libssl-dev libcrypto++-dev zlib1g-dev pgxnclient"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y $BUILDDEPS --no-install-recommends && \
    pgxn install "pg_repack==${PGREPACK_VERSION}" && \
    ln -s /usr/lib/postgresql/*/bin/pg_repack /usr/local/bin/pg_repack && \
    apt-get remove --purge -y $BUILDDEPS && \
    apt-get install -y libpq-dev --no-install-recommends && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man /usr/share/doc /usr/share/doc-base