FROM node:lts-alpine
LABEL maintainer="J33f <jeff@modulaweb.fr>"

RUN apk update  \
    && apk upgrade  \
    && apk --no-cache add \
    builds-deps build-base bash curl curl-dev python3 py3-pip make \
    g++ libc6-compat \
    udev \
    && yarn global add npm  \
    && npm install -g --force --build-from-source pm2

RUN rm /usr/bin/python || true
RUN ln -s /usr/bin/python3 /usr/bin/python

COPY ./app /var/app
COPY ./pm2 /var/pm2Config
COPY ./scripts /var/startScripts

VOLUME /var/app
VOLUME /var/pm2Config
VOLUME /var/startScripts

RUN ["chmod", "+x", "/var/startScripts/run.sh"]

WORKDIR /var/app

CMD /var/startScripts/run.sh