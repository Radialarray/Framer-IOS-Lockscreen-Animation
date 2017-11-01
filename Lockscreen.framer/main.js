// wSocket = require "wSocket"

console.log("hello");
var bla = 3;
var passCo = [];
const WebSocket = require('ws');

const wss = new WebSocket.Server({ port: 8080 });

wss.on('connection', function connection(ws) {
  ws.on('message', function incoming(message) {
    console.log('received: %s', message);
  });

  ws.send('something');
});


const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// rl.question('What do you think of Node.js? ', (answer) => {
//   // passCo.push(answer);
//   // console.log(`Thank you for your valuable feedback: ${answer}`);
// // console.log(passCo);
//   rl.close();
// });
