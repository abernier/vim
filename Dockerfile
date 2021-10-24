# syntax = docker/dockerfile:1.3-labs
FROM alpine

RUN apk add --no-cache vim

COPY .vim /root/.vim

ENTRYPOINT ["vim"]
