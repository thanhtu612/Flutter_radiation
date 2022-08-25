// const express = require("express");
// const { createServer } = require("http");
// const { Server } = require("socket.io");

// const app = express();
// const httpServer = createServer(app);
// const io = new Server(httpServer, { /* options */ });
// const port = 3484

// io.on("connection", (client) => {
//   console.log("New client connected")
// });

// httpServer.listen(port, () => {
//   console.log('Example app listening at http://localhost:' + port)
// });

const app = require('express')();
const server = require('http').createServer(app)
const options = { /* ... */ }
const io = require('socket.io')(server, options)
const port = 3484

io.on("connection", client => {
  console.log("New client connected")
  client.on('fromClient', data => {
    console.log(data)
    client.emit('fromServer', `${Number(data) + 1}`)
  })
  client.on('disconnect', () => console.log('Client disconnected'))
})

server.listen(port, () => {
  console.log('Example app listening at http://localhost:' + port)
})


// const express = require('express')
// const app = express()
// const port = 3000

// app.get('/', (req, res) => {
//   res.send("Demo Express - NodeJS")
// })

// app.listen(port, () => {
//   console.log(`Example app listening on port ${port}`)
// })

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
