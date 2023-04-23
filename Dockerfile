ARG ALPINE_VERSION=3.17
FROM alpine:${ALPINE_VERSION}

ARG PYTHON_RELEASE=3.10.11
ARG PYTHON_VERSION=3.10
# This hack is widely applied to avoid python printing issues in docker containers.
# See: https://github.com/Docker-Hub-frolvlad/docker-alpine-python3/pull/13
ENV PYTHONUNBUFFERED=1

RUN echo "**** install Python ${PYTHON_VERSION} ****" && \
    apk add --no-cache python3=${PYTHON_RELEASE}-r0 && \
    if [ ! -e /usr/bin/python${PYTHON_VERSION} ]; then ln -sf python${PYTHON_VERSION} /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    python${PYTHON_VERSION} -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip${PYTHON_VERSION} install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip${PYTHON_VERSION} /usr/bin/pip ; fi
