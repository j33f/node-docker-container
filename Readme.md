# NodeJs image with PhantomJs

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
- ttf-freefont 
- chromium

plus
- pm2
- npm
- phantomjs
- pupeteer-core

The default work dir is /var/app

_*Tip*_ launch pupeteer like this : 
```js
const pupeteer = require('pupeteer-core');
const browser = await puppeteer.launch({
  headless: true,
  executablePath: process.env.CHROME_BIN || null,
  args: ['--no-sandbox', '--headless', '--disable-gpu', '--disable-dev-shm-usage']
});
```
