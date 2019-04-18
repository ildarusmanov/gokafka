FROM golang:1.12-alpine

RUN apk add librdkafka librdkafka-dev git openssh
