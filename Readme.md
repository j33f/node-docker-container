# Improved NodeJs image with Pupeteer and Unoconv

Based on latest official j33f/node-docker-container:latest image (latest nodeJs/alpine), includes : 
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
- libreoffice-writer
- ttf-droid-nonlatin
- ttf-droid
- ttf-dejavu
- ttf-liberation
- ttf-freefont 
- msttcorefonts-installer
- libreoffice
- unoconv
- chromium

plus
- pm2
- npm
- puppeteer-core

The point of include chromium is to use it with pupeteer. To use pupeteer, proceed like this : 

**Attention:** Use the `puppeteer-core` node module.
```js
const pupeteer = require('puppeteer-core'); 
const browser = await puppeteer.launch({
  headless: true,
  executablePath: process.env.CHROME_BIN || null,
  args: ['--no-sandbox', '--headless', '--disable-gpu', '--disable-dev-shm-usage']
});
```

## Why unoconv

Unoconv allow to convert various documents to various formats (docx to pdf for example)

## Latest automatic build trigger
2021-11-12