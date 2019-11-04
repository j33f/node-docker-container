# Latest NodeJs version based on node:lts-alpine image with some improvements

Based on latest official node:alpine image, includes : 
- builds-deps 
- build-base 
- bash 
- curl 
- curl-dev 
- python 
- make 
- g++ 
- libc6-compat
- udev 

plus
- pm2
- npm

The default work dir is /var/app

pm2 config goes to /var/pm2Config

Start scripts goes to /var/startScripts

## Variants

- [j33f/node-docker-container:pupeteer](/../../tree/pupeteer) - includes pupeteer (and chromium)
- [j33f/node-docker-container:unoconv](/../../tree/unoconv) - includes unoconv (and libreoffice-writer)
- [j33f/node-docker-container:pupeteer-unoconv](/../../tree/pupeteer-unoconv) - both pupeteer and unoconv