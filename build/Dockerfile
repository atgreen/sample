FROM quay.io/moxielogic/sample/sample-base:latest

COPY . /tmp/src
ARG APP_VERSION=APP_VERSION
ENV APP_VERSION=${APP_VERSION}
RUN APP_SYSTEM_NAME=sample /usr/libexec/s2i/assemble
CMD DEV_BACKEND=slynk APP_SYSTEM_NAME=sample APP_EVAL="\"(sample:start-server)\"" /usr/libexec/s2i/run
