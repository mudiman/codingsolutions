
class Queue {
    constructor(size) {
        this.size = size;
        this.queue = new Array(size);
        this.front = this.rear = -1;
    }

    enqueue(val) {
        if ((this.rear + 1) % this.size === this.front) {
            console.error('Queue is full');
            return;
        }
        this.rear = (this.rear + 1) % this.size;
        this.queue[this.rear] = val;
        if (this.front === -1) {
            this.front = 0;
        }
    }

    dequeue() {
        if (this.front === this.rear) {
            console.error('Queue is empty');
            return;
        }
        this.front = (this.front + 1) % this.size;
        const data = this.queue[this.front];
        delete this.queue[this.front];
        return data;
    }

    display() {
        console.info(this.queue);
    }
}


const myQueue = new Queue(5);
myQueue.display();
myQueue.dequeue()

myQueue.enqueue(10);
myQueue.enqueue(11);
myQueue.enqueue(3);
myQueue.enqueue(6);
myQueue.enqueue(1);
myQueue.enqueue(-7);

myQueue.display();
console.info(myQueue.dequeue());
myQueue.display();
console.info(myQueue.dequeue());
myQueue.display();
console.info(myQueue.dequeue());
myQueue.display();
myQueue.enqueue(2);
myQueue.enqueue(3);
myQueue.enqueue(20);
myQueue.display();
console.info(myQueue.dequeue());
myQueue.display();

