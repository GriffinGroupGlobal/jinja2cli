FROM python:3.7.0b5-stretch
LABEL maintainer="g3-dev@griffingroupglobal.com"

RUN groupadd --gid 1000 python \
  && useradd --uid 1000 --gid python --shell /bin/bash --create-home python

RUN set -xe \
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
