# Node alpine (see: https://hub.docker.com/_/node)
FROM node:15.8.0-alpine

RUN apk add --no-cache \
  git \
  vim

ENTRYPOINT ["vim"]
