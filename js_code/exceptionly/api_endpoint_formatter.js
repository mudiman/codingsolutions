#!/bin/bash

read -r -d '' serverScript << EOM

/* -------------- NodeJS server code Start ------------- */

const http = require('http');
const port = 8081;

const products = [
  {"id": 1, "updated_at": 1565641075, "price": 110, "manufacturer": "m2", "name": "Product1"},
  {"id": 2, "updated_at": 1565645377, "price": 100, "name": "Product2"}
];

const requestHandler = (request, response) => {
  let url = require('url');
  let path = url.parse(request.url).pathname;
  if (path === '/products') {    
    response.writeHead(200, {'Content-Type': 'application/json'});
    response.end(JSON.stringify(products));
  } 

  response.writeHead(404, {'Content-Type': 'application/json'});
  response.end(); 
}

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
  if (err) {
    return console.log('something bad happened', err);
  }

  console.log('server is listening on ' + port);
})

/* -------------- NodeJS server code End ------------- */

EOM

# Preparing folder
rm -rf /root/data
mkdir -p /root/data

# Preparing nodejs server
touch /root/data/server.js
echo -e "$serverScript" >> /root/data/server.js
ps aux | grep server.js | awk '{print $2}' | xargs kill &>/dev/null
nohup node /root/data/server.js &>/dev/null &
sleep 1



const http = require('http');

function convert(products) {
    products.forEach( (item, index) => {
        let manufacturer = "no manufacturer"
        if (item.manufacturer) {
            manufacturer = `manufacturer ${item.manufacturer}`
        }
        console.info(`Product ${item.name} has price ${item.price} and ${manufacturer}`)
    })
}

var options = {
  host: '127.0.0.1',
  port: 8081,
  path: '/products'
};
http.get(options, function(res) {
  var body = '';
  res.on('data', function(chunk) {
    body += chunk;
  });
  res.on('end', function() {
    convert(JSON.parse(body))
  });
}).on('error', function(e) {
  console.log("Got error: " + e.message);
}); 
