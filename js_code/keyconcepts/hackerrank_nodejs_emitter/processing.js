const EventEmitter = require('events');
const stocks = require('./stock-list.json');

var stockMap = stocks.reduce((data, item) => {
    data[item.id] = item.stock;
    return data;
}, {});


class OrderProcessor extends EventEmitter {
  placeOrder(order) {
    let failure = false;
    this.emit("PROCESSING_STARTED", order.orderNumber);
    if (!order.lineItems || order.lineItems.length == 0) {
      failure = true;
      this.emit("PROCESSING_FAILED", {
        orderNumber: order.orderNumber,
        reason: "LINEITEMS_EMPTY"
      });
    } else {
      order.lineItems.forEach( (item, index) => {
          if (!stockMap[item.itemId] || stockMap[item.itemId] < item.quantity ) {
            failure = true;
            this.emit("PROCESSING_FAILED", {
              orderNumber: order.orderNumber,
              reason: "INSUFFICIENT_STOCK",
              itemId: item.itemId
            });
          } else {
           // stockMap[item.itemId] -= item.quantity;
          }
      });
    }
    if (!failure) {
      this.emit("PROCESSING_SUCCESS", order.orderNumber);
    }
  }
}

module.exports = OrderProcessor;