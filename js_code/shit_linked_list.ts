//https://www.algoexpert.io/questions/shift-linked-list

class LinkedList {
    value: number;
    next: LinkedList | null;
    prev: LinkedList | null;

    constructor(value: number) {
        this.value = value;
        this.next = null;
        this.prev = null;
    }
}

class CircularLinkedList extends LinkedList {
    prev: LinkedList | null;

    constructor(value: number) {
        parent(value)
        this.prev = null;
    }
}

function shiftLinkedList(head: LinkedList, k: number) {
    //link last node to first circular
    let current = head as CircularLinkedList;

    while (current.next) {
        current.next.prev = current as CircularLinkedList
        current = current.next as CircularLinkedList
    }
    current.next = head as CircularLinkedList
    head.prev = current as CircularLinkedList
    // for position k head is k last node
    if (k > 0) {
        for (let i = 1; i < k; i++) {
            current = current.prev as CircularLinkedList
        }
        head = current as CircularLinkedList
    } else if (k < 0) {
        for (let i = 0; i < Math.abs(k); i++) {
            head = head.next as CircularLinkedList
        }
    }
    head.prev.next = null
    return head;
}

class LinkedListGenerator {
    head: any;

    constructor(data: any) {
        let prev = new LinkedList(data.nodes[0].value);
        this.head = prev;
        for (let [key, value] of Object.entries(data.nodes)) {
            if (key == '0') continue;
            const node = new LinkedList(value.value);
            prev.next = node;
            prev = node;
        }
    }

    printLinkedList(head: LinkedList) {
        let current: LinkedList = head;
        let nodes = [current.value]
        while (current.next) {
            current = current.next
            nodes.push(current.value)
        }
        console.info(nodes);
    }
}

const linkedListGen = new LinkedListGenerator({
    "head": "0",
    "nodes": [
        { "id": "0", "next": "1", "value": 0 },
        { "id": "1", "next": "2", "value": 1 },
        { "id": "2", "next": "3", "value": 2 },
        { "id": "3", "next": "4", "value": 3 },
        { "id": "4", "next": "5", "value": 4 },
        { "id": "5", "next": null, "value": 5 }
    ]
})

linkedListGen.printLinkedList(linkedListGen.head)
linkedListGen.head = shiftLinkedList(linkedListGen.head, 0)
linkedListGen.printLinkedList(linkedListGen.head)