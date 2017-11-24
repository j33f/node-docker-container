FROM node:alpine
MAINTAINER J33f <jeff@modulaweb.fr>

RUN apk add bash && yarn global add pm2

WORKDIR /var/app
