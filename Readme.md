# Improved NodeJs image with Pupeteer and Unoconv

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
- libreoffice-writer
- ttf-droid-nonlatin
- ttf-droid
- ttf-dejavu
- ttf-liberation
- libreoffice
- unoconv

plus
- pm2
- npm

## Why unoconv

Unoconv allow to convert various documents to various formats (docx to pdf for example)