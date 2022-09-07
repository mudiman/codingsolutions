#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'isBalanced' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

class Queue:
    def __init__(self) -> None:
        self.___s1 = []
        self.___s2 = []

    def enqueue(self, no):       
        while len(self.___s2) > 0:
            self.___s1.append(self.___s2.pop())

        self.___s1.append(no)

        while len(self.___s1) > 0:
            self.___s2.append(self.___s1.pop())

    def dequeue(self):
        return self.___s2.pop()

    def print(self):
        return self.___s2[-1]

def operation(queue, x):
    match x:
        case 2:
            queue.dequeue()
            return
        case 3:
            print(queue.print())
            return

if __name__ == '__main__':

    # t = int(input().strip())
    # queries = []
    # for t_itr in range(t):
    #     s = list(map(int, input().split(" ")))
    #     queries.append(s)
    # print(queries) 
    #[[1, 42], [2], [1, 14], [3], [1, 28], [3], [1, 60], [1, 78], [2], [2]]
    queries = [[1, 42], [2], [1, 14], [3], [1, 28], [3], [1, 60], [1, 78], [2], [2]]
    queue = Queue()
    for i,v in enumerate(queries):
        if len(v) == 1:
            operation(queue, v[0])
        else:
            queue.enqueue(v[1])


      