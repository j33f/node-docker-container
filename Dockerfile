FROM j33f/node-docker-container:unoconv
MAINTAINER J33f <jeff@modulaweb.fr>

ENV CHROME_BIN="/usr/bin/chromium-browser"

RUN set -x \
    && apk update && apk upgrade && apk --no-cache add --virtual \
    udev ttf-freefont chromium \
    && yarn global add puppeteer-core@1.10.0
