#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'bfs' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER m
#  3. 2D_INTEGER_ARRAY edges
#  4. INTEGER s
#

class Graph:
    def __init__(self):
        self.nodes = 0
        self.adjacentList = {}

    def addVertex(self, val):
        self.adjacentList[val] = []
        self.nodes +=1

    def addEdge(self,val1,val2):
        self.adjacentList[val1].append(val2)
        self.adjacentList[val2].append(val1)
        
    def lookup(self, start, pos, dis):
        if not self.adjacentList[start]:
            return 0
        if start == pos:
            return dis
        for v in self.adjacentList[start]:
            if v > start:
                dis += self.lookup(v, pos, dis + 6)
        return dis

    def bfs(self, start, end):
        if not self.adjacentList[start]:
            return -1
        if not self.adjacentList[end]:
            return -1
        
        for v in self.adjacentList[start]:
            if v == end:
                return 6
        dis = 0
        dis = self.lookup(start,end,dis) - 6
        return dis
        
def bfs(n, m, edges, s):
    tree = Graph()
    for i in range(1, n + 1):
        tree.addVertex(i)

    for i in range(len(edges) - 1):
        tree.addEdge(edges[i][0], edges[i][1])

    res = []
    for i in range(1, n + 1):
        if i != s:
            res.append(tree.bfs(s, i))

    return res

if __name__ == '__main__':
    fptr = open("graph/input01.txt", 'r')

    first_multiple_input = fptr.readline().rstrip().split()
    n = int(first_multiple_input[0])
    m = int(first_multiple_input[1])
    edges = []

    while True:
   
        # Get next line from file
        line = fptr.readline()
        edges.append(list(map(int, line.rstrip().split())))

        if not line:
            break
    
    fptr.close()

    print(bfs(n, m, edges, 16))


# print(bfs(4,2, [[1,2], [1,3]], 1))
# print(bfs(3,1, [[2,3]], 2))
#print(bfs(5,3, [[1,2], [1,3], [3,4]], 1))
    
# 2
# 4 2
# 1 2
# 1 3
# 1
# 3 1
# 2 3
# 2

# 6 6 -1
# -1 6