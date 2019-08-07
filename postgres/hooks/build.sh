#!/bin/bash

TAG="jobandtalent/postgres${BASE_TAG:+:${BASE_TAG}}"

set -x
docker build . \
    --no-cache \
    -t "$TAG" \
    --build-arg BASE_TAG=$BASE_TAG