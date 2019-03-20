FROM node:11-alpine
MAINTAINER J33f <jeff@modulaweb.fr>

ENV CHROME_BIN="/usr/bin/chromium-browser"

ENV UNO_URL https://raw.githubusercontent.com/dagwieers/unoconv/master/unoconv

RUN set -x \
    && apk update && apk upgrade && apk --no-cache add --virtual \
    builds-deps build-base bash fontconfig curl curl-dev python make \
    g++ libc6-compat \
    util-linux \
    libreoffice-common \
    libreoffice-writer \
    ttf-droid-nonlatin \
    ttf-droid \
    ttf-dejavu \
    ttf-freefont \
    ttf-liberation \
    udev chromium \
    && yarn global add pm2 && yarn global add npm && yarn global add puppeteer-core@1.10.0 \
    && curl -Ls $UNO_URL -o /usr/local/bin/unoconv \
    && chmod +x /usr/local/bin/unoconv \
    && ln -s /usr/bin/python3 /usr/bin/python \

WORKDIR /var/app
