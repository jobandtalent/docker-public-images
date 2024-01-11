FROM ubuntu:20.04
LABEL "Mantainer"="Jobandtalent Platform team <platform@jobandtalent.com>"

ARG PGREPACK_VERSION=${PGREPACK_VERSION}

RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential \
    pgxnclient \
    libpq-dev \
    postgresql-server-dev-all \
    libghc-readline-dev \
    libzstd-dev \
    liblz4-dev \
    liblz-dev \
    libssl-dev \
    libcrypto++-dev \
    zlib1g-dev

RUN pgxn install "pg_repack==${PGREPACK_VERSION}"
RUN ln -s /usr/lib/postgresql/*/bin/pg_repack /usr/local/bin/pg_repack
