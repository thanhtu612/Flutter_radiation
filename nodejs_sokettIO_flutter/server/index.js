const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send("Demo Express - NodeJS")
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

/*
const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
*/
