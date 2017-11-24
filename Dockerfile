FROM node:alpine
MAINTAINER J33f <jeff@modulaweb.fr>

RUN apk update && apk add bash pm2 && yarn global add pm2

WORKDIR /var/app
