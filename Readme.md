# NodeJs image with some improvements

Based on latest official node:alpine image, includes : 
- builds-deps 
- build-base 
- bash 
- fontconfig 
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

## Variants

- [j33f/node-docker-container:pupeteer](/../../tree/pupeteer) - includes pupeteer (and chromium)
- [j33f/node-docker-container:unoconv](/../../tree/unoconv) - includes unoconv (and libreoffice-writer)
- [j33f/node-docker-container:pupeteer-unoconv](/../../tree/pupeteer-unoconv) - both pupeteer and unoconv