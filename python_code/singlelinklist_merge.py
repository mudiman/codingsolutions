#!/bin/python3

import math
import os
import random
import re
import sys

class SinglyLinkedListNode:
    def __init__(self, node_data):
        self.data = node_data
        self.next = None

class SinglyLinkedList:
    def __init__(self):
        self.head = None
        self.tail = None

    def insert_node(self, node_data):
        node = SinglyLinkedListNode(node_data)

        if not self.head:
            self.head = node
        else:
            self.tail.next = node


        self.tail = node

def print_singly_linked_list(node):
    while node:
        print(str(node.data))

        node = node.next

        # if node:
        #     fptr.write(sep)

# Complete the mergeLists function below.

#
# For your reference:
#
# SinglyLinkedListNode:
#     int data
#     SinglyLinkedListNode next
#
#
def mergeLists(head1, head2):
    c1 = head1
    c2 = head2
    mg = None
    if c1.data >= c2.data:
        mg = c2
        temp = c2.next
        mg.next = c1
        c2 = temp
    else:
        mg = c1
        temp = c1.next
        mg.next = c2
        c1 = temp
    mgHead = mg
    while c1 != None or c2 != None:
        if c1 == None or (c2 != None and c1.data > c2.data):
            temp = c2.next
            mg.next = c2
            c2 = temp
        elif c2 == None or (c1 != None and c2.data >= c1.data):
            temp = c1.next
            mg.next = c1
            c1 = temp
        mg = mg.next
    return mgHead
            
            
    

if __name__ == '__main__':

    llist1 = SinglyLinkedList()

    for i,v in enumerate([1,2,3,4]):
        llist1.insert_node(v)
        
    llist2 = SinglyLinkedList()

    for i,v in enumerate([3]):
        llist2.insert_node(v)

    llist3 = mergeLists(llist1.head, llist2.head)

    print_singly_linked_list(llist3)

