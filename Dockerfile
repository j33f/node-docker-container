FROM node:11-alpine
MAINTAINER J33f <jeff@modulaweb.fr>

ENV CHROME_BIN="/usr/bin/chromium-browser"

RUN set -x \
    && apk update && apk upgrade && apk --no-cache add --virtual \
    builds-deps build-base bash fontconfig curl curl-dev python make \
    g++ libc6-compat \
    udev ttf-freefont chromium \
    && yarn global add npm && npm install -g --force --build-from-source pm2 &&  yarn global add puppeteer-core@1.10.0

WORKDIR /var/app
