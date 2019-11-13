FROM j33f/node-docker-container:latest
LABEL maintainer="J33f <jeff@modulaweb.fr>"

RUN set -x \
    && apk update && apk upgrade && apk --no-cache add --virtual pdftk
    && yarn global node-pdftk