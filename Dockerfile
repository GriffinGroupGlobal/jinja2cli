FROM python:3.7.0b5-alpine3.7
LABEL maintainer="g3-dev@griffingroupglobal.com"

ARG UID=1000
ARG GID=1000
ARG USERNAME=python

RUN set -xe \
    && addgroup -g ${GID} ${USERNAME} \
    && adduser -D -h /home/${USERNAME} -u ${UID} -G ${USERNAME} ${USERNAME}

RUN set -xe \
    && apk --no-cache add su-exec \
    && pip install --upgrade pip \
    && pip install jinja2-cli pyyaml \
    && find /usr/local \
        \( -type d -a -name test -o -name tests \) \
        -o \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
        -exec rm -rf '{}' +

RUN mkdir -p /pyrun

COPY docker-entrypoint.sh /entrypoint.sh

USER python

CMD [ "/entrypoint.sh" ]
