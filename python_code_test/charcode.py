#!/bin/python3

import math
import os
import random
import re
import sys
import string

#
# Complete the 'caesarCipher' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. STRING s
#  2. INTEGER k
#

def caesarCipher(s, k):
    final = ''
    ordZ = ord('z')
    ordA = ord('a')
    k = k % 26
    for c in s:
        if c in string.ascii_letters:
            isupper = c.isupper()
            temp = ord(c.lower()) + k
            if temp > ordZ:
                temp = temp - ordZ + ordA -1
            letter = chr(temp)
            if isupper:
                letter = letter.upper()
            final += letter
        else:
            final += c
                
    return final

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    s = input()

    k = int(input().strip())

    result = caesarCipher(s, k)

    fptr.write(result + '\n')

    fptr.close()
