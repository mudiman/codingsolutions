
class Queue {
    constructor() {
        this.queue = [];
    }

    enqueue(val) {
        this.queue.push(val)
    }

    dequeue() {
        if (this.queue.length === 0) {
            console.error('Queue is empty');
            return;
        }
        return this.queue.shift();
    }

    length() {
        return this.queue.length
    }

    display() {
        console.info(this.queue);
    }
}

class Stack {
    constructor() {
        this.main = new Queue();
        this.secondary = new Queue();
    }

    push(val) {
        if (this.main.length() === 0) {
            while (this.secondary.length()) {
                this.main.enqueue(this.secondary.dequeue())
            }
        }
        this.main.enqueue(val);
    }

    pop() {
        if (this.main.length() === 0) {
            while (this.secondary.length()) {
                this.main.enqueue(this.secondary.dequeue())
            }
        }
        while (this.main.length() != 1) {
            this.secondary.enqueue(this.main.dequeue())
        }
        return this.main.dequeue();
    }
}
// Testing
let stack = new Stack();
stack.push(1);
stack.push(2);
stack.push(3);
console.log(stack.pop());
console.log(stack.pop());
// [1, 2, 3]   
// pop 3, 2   dequeue 1 ,2   Queue 1, 2
// 1
