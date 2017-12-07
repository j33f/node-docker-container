FROM node:alpine
MAINTAINER J33f <jeff@modulaweb.fr>

RUN apk update && apk --no-cache add bash curl python make && yarn global add pm2

WORKDIR /var/app
