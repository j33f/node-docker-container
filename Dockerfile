FROM debian:jessie
MAINTAINER J33f <jeff@modulaweb.fr>

ENV TERM=xterm-256color
ENV NODE_VERSION=9.2.0
ENV PATH=/opt/node-v$NODE_VERSION-linux-x64/bin:$PATH

ADD https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz /tmp/

COPY sources.list /etc/apt/sources.list

RUN tar xf /tmp/node-v$NODE_VERSION-linux-x64.tar.gz -C /opt/ \
    && rm /tmp/node-v$NODE_VERSION-linux-x64.tar.gz \
    && mkdir -p /var/app \
    && npm set progress=false \
    && npm install -g \
      pm2 \
    && echo "" > /opt/node-v$NODE_VERSION-linux-x64/lib/node_modules/pm2/lib/keymetrics \
    && apt-get update \
    && apt-get install -y \
      curl \
      g++ \
      libfontconfig \
      python \
      rbenv \
      wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo "alias ll=\"ls -lahF --color\"" >> ~/.bashrc

WORKDIR /var/app
