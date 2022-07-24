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

### With puppeteer

puppeteer is a headless chromium driver that aims to pilot a chromium instance from your node code.

- Image name : `j33f/node-docker-container:puppeteer`
- See [Dockerfile](https://github.com/j33f/node-docker-container/blob/master/Dockerfile.puppeteer).
- Includes: 
    - `udev 
      ttf-freefont 
      ttf-droid-nonlatin 
      ttf-droid 
      ttf-dejavu 
      ttf-liberation 
      msttcorefonts \
      fontconfig 
      freetype 
      nss 
      harfbuzz 
      ca-certificates 
      chromium` as system dependencies
    - `puppeteer@10.2.0` as global npm dependency
- __Note:__ actual Alpine Chromium version is 93 which correspond to [puppeteer@10.2.0](https://github.com/puppeteer/puppeteer/releases/tag/v10.2.0)
    
### With Unoconv

Unoconv aims to pilot a libre-office instance to allow to convert and manipulate any ODF or Office file and convert them.

It is useful if you need to generate PDF files from a Docx template.

- Image name : `j33f/node-docker-container:unoconv`
- See [Dockerfile](https://github.com/j33f/node-docker-container/blob/master/Dockerfile.unoconv).
- Includes: 
    - `unoconv libreoffice-writer freetype ttf-freefont ttf-droid-nonlatin ttf-droid ttf-dejavu ttf-liberation fontconfig msttcorefonts` as system dependencies

### With both puppeteer and Unoconv

- Image name : `j33f/node-docker-container:puppeteer-unoconv`
- See [Dockerfile](https://github.com/j33f/node-docker-container/blob/master/Dockerfile.puppeteer-unoconv).

## Latest automatic build trigger
2022-07-24