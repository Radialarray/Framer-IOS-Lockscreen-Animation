// wSocket = require "wSocket"
var readline = require('readline');

console.log("hello");
var bla = 3;
var passCo = [1];
// const WebSocket = require('ws');
//
// const wss = new WebSocket.Server({ port: 8080 });
//
// wss.on('connection', function connection(ws) {
//   ws.on('message', function incoming(message) {
//     console.log('received: %s', message);
//   });
//
//   ws.send('something');
// });
//
//
// const readline = require('readline');
//
// const rl = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout
// });
//
// // rl.question('What do you think of Node.js? ', (answer) => {
// //   // passCo.push(answer);
// //   // console.log(`Thank you for your valuable feedback: ${answer}`);
// // // console.log(passCo);
// //   rl.close();
// // });



var log = console.log;

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

var recursiveAsyncReadLine = function () {
  rl.question('Command: ', function (answer) {
    if (answer == 'exit') //we need some base case, for recursion
      return rl.close(); //closing RL and returning from function.
    log('Got it! Your answer was: "', answer, '"');
    passCo.push(answer);
    recursiveAsyncReadLine(); //Calling this function again to ask new question
  });
};

recursiveAsyncReadLine(); //we have to actually start our recursion somehow
