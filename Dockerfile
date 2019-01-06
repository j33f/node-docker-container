FROM node:11-alpine
MAINTAINER J33f <jeff@modulaweb.fr>

ENV CHROME_BIN="/usr/bin/chromium-browser"

RUN set -x \
    && apk update && apk upgrade && apk --no-cache add --virtual \
    builds-deps build-base bash fontconfig curl curl-dev python make \
    g++ libc6-compat \
    udev ttf-freefont chromium \
    && yarn global add pm2 && yarn global add npm

RUN mkdir -p /usr/share && \
    cd /usr/share \
    && curl -L https://github.com/Overbryd/docker-phantomjs-alpine/releases/download/2.11/phantomjs-alpine-x86_64.tar.bz2 | tar xj \
    && ln -s /usr/share/phantomjs/phantomjs /usr/bin/phantomjs

WORKDIR /var/app
