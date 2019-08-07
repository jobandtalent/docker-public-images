ARG BASE_TAG
FROM postgres:${BASE_TAG}

COPY docker-healthcheck /usr/local/bin/
RUN chmod u+x /usr/local/bin/docker-healthcheck

HEALTHCHECK --timeout=120s --start-period=20s CMD ["docker-healthcheck"]