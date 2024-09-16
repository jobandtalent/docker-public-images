FROM alpine:3.20
LABEL "Mantainer"="Jobandtalent Platform team <platform@jobandtalent.com>"

ARG RIOT_VERSION=${RIOT_VERSION}

RUN apk update && apk upgrade && \
    apk add --no-cache openjdk17-jre-headless netcat-openbsd wget unzip && \
    # Remove unnecessary files to reduce the image size
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /usr/share/man /usr/share/doc /usr/share/licenses

# Old and new versions use different file names.
RUN (wget https://github.com/redis-developer/riot/releases/download/v$RIOT_VERSION/riot-$RIOT_VERSION.zip \
    || wget https://github.com/redis-developer/riot/releases/download/v$RIOT_VERSION/riot-redis-$RIOT_VERSION.zip) \
    && (unzip riot-$RIOT_VERSION.zip || unzip riot-redis-$RIOT_VERSION.zip) \
    && (mv riot-$RIOT_VERSION riot && mv riot/bin/riot riot/bin/riot-redis || mv riot-redis-$RIOT_VERSION riot) \
    && (rm riot-$RIOT_VERSION.zip || rm riot-redis-$RIOT_VERSION.zip) \
    && apk del unzip wget

WORKDIR riot/bin
