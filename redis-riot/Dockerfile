FROM ubuntu:20.04
LABEL "Mantainer"="Jobandtalent Platform team <platform@jobandtalent.com>"
ARG DEBIAN_FRONTEND=noninteractive
ARG RIOT_VERSION=${RIOT_VERSION}

RUN apt-get update && apt-get upgrade -y && apt-get install -y default-jre netcat wget unzip
RUN wget https://github.com/redis-developer/riot/releases/download/v$RIOT_VERSION/riot-redis-$RIOT_VERSION.zip \
    && unzip riot-redis-$RIOT_VERSION.zip \
    && mv riot-redis-$RIOT_VERSION riot \
    && rm riot-redis-$RIOT_VERSION.zip

WORKDIR riot/bin
