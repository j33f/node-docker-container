# Latest NodeJs version based on node:lts-alpine image with some improvements

Based on latest official node:lts-alpine image, includes : 
`builds-deps build-base bash curl curl-dev python3 pip make g++ libc6-compat udev pm2 yarn npm npx`

## volumes

- The default work dir is `/var/app`

- pm2 config goes to `/var/pm2Config`

- Start scripts goes to `/var/startScripts`

## How to use

### Default start

Mount your app root to `/var/app`, your app main script should be called `app.js`

### PM2 tweaks

Mount your app root to `/var/app` and your pm2 config file to `/var/pm2Config/config.json`

## Variants

### With Pupeteer

Pupeteer is a headless chromium driver that aims to pilot a chromium instance from your node code.

- Image name : `j33f/node-docker-container:pupeteer`
- See [Dockerfile](https://github.com/j33f/node-docker-container/blob/master/Dockerfile.pupeteer).
- Includes: 
    - `ttf-freefont chromium` as system dependencies
    - `pupeteer-core` as global npm dependency
    
### With Unoconv

Unoconv aims to pilot a libre-office instance to allow to convert and manipulate any ODF or Office file and convert them.

It is useful if you need to generate PDF files from a Docx template.

- Image name : `j33f/node-docker-container:unoconv`
- See [Dockerfile](https://github.com/j33f/node-docker-container/blob/master/Dockerfile.unoconv).
- Includes: 
    - `unoconv libreoffice-writer ttf-droid-nonlatin ttf-droid ttf-dejavu ttf-liberation fontconfigm` as system dependencies

### With both Pupeteer and Unoconv

- Image name : `j33f/node-docker-container:pupeteer-unoconv`
- See [Dockerfile](https://github.com/j33f/node-docker-container/blob/master/Dockerfile.pupeteer-unoconv).

## Latest automatic build trigger
2021-12-02