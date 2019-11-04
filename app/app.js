#!/usr/bin/env node

const http =require('http');

const port = process.env.PORT || 3000;

const requestHandler = (request, response) => {
  console.log('request', request.url);
  response.end(`Hello, is it me you're looking for ?`);
};

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
  if (err) {
    return console.log('something bad happened', err);
  }

  console.log(`Sample server is listening on ${port} !`);
});