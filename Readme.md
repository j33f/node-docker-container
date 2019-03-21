# Improved NodeJs image with Pupeteer

Based on latest official j33f/node-docker-container:latest (latest nodejs/alpine), includes : 
- ttf-freefont 
- chromium

plus
- pm2
- npm
- puppeteer-core@1.10.0

The point of include chromium is to use it with pupeteer. To use pupeteer, proceed like this : 

**Attention:** Use the `puppeteer-core@1.10.0` node module.
```js
const pupeteer = require('puppeteer-core'); 
const browser = await puppeteer.launch({
  headless: true,
  executablePath: process.env.CHROME_BIN || null,
  args: ['--no-sandbox', '--headless', '--disable-gpu', '--disable-dev-shm-usage']
});
```
