FROM node:16-alpine AS base

# hadolint ignore=DL3018
RUN apk add --no-cache git jq wget yq bash

ENV NODE_ENV production

RUN npm install --location=global versionist@v6.7.1 balena-versionist@v0.14.5

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
