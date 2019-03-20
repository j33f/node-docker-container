FROM node:11-alpine
MAINTAINER J33f <jeff@modulaweb.fr>

ENV CHROME_BIN="/usr/bin/chromium-browser"

ENV UNO_URL="https://raw.githubusercontent.com/dagwieers/unoconv/master/unoconv"

RUN set -x \
    && apk update && apk upgrade && apk --no-cache add --virtual \
    builds-deps build-base bash fontconfig curl curl-dev make \
    g++ libc6-compat \
    libreoffice-writer \
    ttf-droid-nonlatin \
    ttf-droid \
    ttf-dejavu \
    ttf-freefont \
    ttf-liberation \
    udev chromium
RUN yarn global add npm && npm install -g --force --build-from-source pm2 && yarn global add puppeteer-core@1.10.0
RUN curl -Ls $UNO_URL -o /usr/local/bin/unoconv \
    && chmod +x /usr/local/bin/unoconv
RUN ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /var/app