const events = require("events");

function createEmitter(onOpen, onClose) {  
  const myEmitter = new events.EventEmitter()
  myEmitter.once('open', onOpen); 
  myEmitter.once('close', onClose);
//   myEmitter.on('open', onOpen); 
//   myEmitter.on('close', onClose);
  return myEmitter;

}

function opened(emittee) {
  emittee.emit('open');

}
function closed(emittee) {
  emittee.emit('close');
}

let emitter = createEmitter(
  () => console.log("Opened!"), () => console.log("Closed!")
);
opened(emitter);
closed(emitter);

module.exports.createEmitter = createEmitter;
module.exports.opened = opened;
module.exports.closed = closed;