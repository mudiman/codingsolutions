#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'towerBreakers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER m
#

def move(m):
    for i in range(m - 1, 1 , -1):
        if m % i == 0:
            return i
    return m - 1

def towerBreakers(n, m):
    towers = [m] * n
    p = 1
    while min(towers) > 0:
        y = move(m)
        moved = False
        for i, num in enumerate(towers):
            if num > y:
                towers[i] -= y
                moved = True
                break
        if (not moved):
            return 2 if p == 1 else 1
            break
        p = 2 if p == 1 else 1
        

if __name__ == '__main__':
    print(towerBreakers(2, 6))
