#!/bin/python3

import math
import os
import random
import re
import sys


# 1 abc
# 3 3
# 2 3
# 1 xy
# 3 2
# 4
# 4
# 3 1
# append - Append string  to the end of .
# delete - Delete the last  characters of .
# print - Print the  character of .
# undo - Undo the last (not previously undone) operation of type  or , reverting  to the state it was in prior to that operation.

class Editor:
    def __init__(self) -> None:
        self.s = ''
        self.ls = []

    def operation(self, query):
        op, l = query if len(query) == 2 else [query[0], 0]
        match int(op):
            case 1:
                self.ls.append(self.s)
                self.s += l
            case 2:
                self.ls.append(self.s)
                self.s = self.s[:-int(l)]
            case 3:
                print(self.s[int(l) - 1])
                return
            case 4:
                self.s = self.ls.pop()
                return


if __name__ == '__main__':

    # t = int(input().strip())

    # queries = []
    # for t_itr in range(t):
    #     s = input().split(" ")
    #     queries.append(s)

    queries = [['1', 'abc'], ['3', '3'], ['2', '3'], [
        '1', 'xy'], ['3', '2'], ['4'], ['4'], ['3', '1']]
    ed = Editor()
    for query in queries:
        ed.operation(query)
