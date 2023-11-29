from collections import deque
from typing import Optional

# Definition for singly-linked list.


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


def generateLinkedList(l):
    parentNode = currentNode = None
    for no in l:
        node = ListNode(no, None)
        if currentNode:
            currentNode.next = node
            currentNode = node
        else:
            parentNode = currentNode = node
    return parentNode


class Solution:
    def sumWithQueue(self, ll):
        queue = deque()
        pointer = ll
        while pointer:
            queue.append(pointer.val)
            pointer = pointer.next

        no = 0
        while len(queue):
            temp = queue.pop()
            no = no * 10 + temp

        return no

    def noToLinklist(self, no):
        parentNode = currentNode = None
        while True:
            temp = no % 10
            no = no // 10
            node = ListNode(temp, None)
            if currentNode:
                currentNode.next = node
                currentNode = currentNode.next
            else:
                parentNode = currentNode = node
            if no <= 0:
                break
        return parentNode

    def transverseLinklist(self, ll):
        output = []
        pointer = ll
        while pointer:
            output.append(pointer.val)
            pointer = pointer.next
        print(output)

    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:

        no1 = self.sumWithQueue(l1)
        no2 = self.sumWithQueue(l2)
        result = no1 + no2
        return self.noToLinklist(result)


sol = Solution()
ll = sol.addTwoNumbers(
    generateLinkedList([0]),
    generateLinkedList([0])
)
sol.transverseLinklist(ll)
