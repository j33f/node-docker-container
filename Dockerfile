FROM node:alpine
MAINTAINER J33f <jeff@modulaweb.fr>

RUN yarn global add pm2

WORKDIR /var/app
