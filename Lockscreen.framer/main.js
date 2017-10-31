const readline = require('readline');
let test;
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Please type in your code: ', (answer) => {
 console.log("Received "+answer)
  test = answer
  console.log(`Thanks for the code ${answer}`);

  rl.close();
});


// Reguire modules
var express = require('../node_modules/express');

// Create app
var app = express();


// Serve static files as default
// app.get('/*', express.static(__dirname + '/Lockscreen.framer'));
app.get('/*', express.static(__dirname));

// Listen for both Heroku and local. Access locally as http://localhost:3333
app.listen(process.env.PORT || 3333);


console.log(test)
