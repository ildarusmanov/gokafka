FROM golang:1.12-alpine
ENV LIBRDKAFKA_VERSION "v1.2.1"
# setup librdkafka
RUN apk add librdkafka=1.2.1-r0 librdkafka-dev=1.2.1-r0 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
