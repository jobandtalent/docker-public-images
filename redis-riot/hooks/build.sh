#!/bin/bash

TAG="jobandtalent/redis-riot${RIOT_VERSION:+:${RIOT_VERSION}}"

set -x
docker build . \
    --no-cache \
    -t "$TAG" \
    --build-arg RIOT_VERSION=$RIOT_VERSION