//https://www.algoexpert.io/questions/shift-linked-list
class LinkedList {
    value;
    next;
    prev;
    constructor(value) {
        this.value = value;
        this.next = null;
        this.prev = null;
    }
}
class CircularLinkedList extends LinkedList {
    prev;
    constructor(value) {
        parent(value);
        this.prev = null;
    }
}
function shiftLinkedList(head, k) {
    //link last node to first circular
    let current = head;
    while (current.next) {
        current.next.prev = current;
        current = current.next;
    }
    current.next = head;
    head.prev = current;
    // for position k head is k last node
    if (k >= 0) {
        for (let i = 1; i < k; i++) {
            current = current.prev;
        }
        head = current;
    }
    else {
        for (let i = 0; i < Math.abs(k); i++) {
            head = head.next;
        }
    }
    head.prev.next = null;
    return head;
}
class LinkedListGenerator {
    head;
    constructor(data) {
        let prev = new LinkedList(data.nodes[0].value);
        this.head = prev;
        for (let [key, value] of Object.entries(data.nodes)) {
            if (key == '0')
                continue;
            const node = new LinkedList(value.value);
            prev.next = node;
            prev = node;
        }
    }
    printLinkedList(head) {
        let current = head;
        let nodes = [current.value];
        while (current.next) {
            current = current.next;
            nodes.push(current.value);
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
});
linkedListGen.printLinkedList(linkedListGen.head);
linkedListGen.head = shiftLinkedList(linkedListGen.head, 0);
linkedListGen.printLinkedList(linkedListGen.head);
//# sourceMappingURL=shit_linked_list.js.map