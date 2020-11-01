FROM node:12-alpine

ENV HOME=/app \
    NODE_ENV=development \
    HOST=0.0.0.0

WORKDIR $HOME

RUN apk update --no-cache && \
    apk add --no-cache vim && \
    apk add --no-cache curl && \
    curl -o- -L https://yarnpkg.com/install.sh | sh

EXPOSE 3000
