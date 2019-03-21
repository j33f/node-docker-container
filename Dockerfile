FROM j33f/node-docker-container:latest
MAINTAINER J33f <jeff@modulaweb.fr>

ENV UNO_URL="https://raw.githubusercontent.com/dagwieers/unoconv/master/unoconv"

RUN set -x \
    && apk update && apk upgrade && apk --no-cache add --virtual \
    libreoffice-writer \
    ttf-droid-nonlatin \
    ttf-droid \
    ttf-dejavu \
    ttf-liberation \
    fontconfig
RUN rm /usr/bin/python && ln -s /usr/bin/python3 /usr/bin/python
RUN apk --no-cache add msttcorefonts-installer \
    && update-ms-fonts \
    && fc-cache -f
RUN curl -Ls $UNO_URL -o /usr/local/bin/unoconv \
    && chmod +x /usr/local/bin/unoconv


WORKDIR /var/app