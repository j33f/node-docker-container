FROM node:alpine
MAINTAINER J33f <jeff@modulaweb.fr>

RUN apk update && apk --no-cache add --virtual builds-deps build-base bash curl python make g++ libc6-compat && yarn global add pm2 && yarn global add npm

WORKDIR /var/app
