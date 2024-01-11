#!/bin/bash

TAG="jobandtalent/pgrepack${PGREPACK_VERSION:+:${PGREPACK_VERSION}}"

set -x
docker build . \
    --no-cache \
    -t "$TAG" \
    --build-arg PGREPACK_VERSION=$PGREPACK_VERSION