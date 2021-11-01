def makeArrayConsecutive2(statues):
    statues.sort()
    count = 0
    dic = { i : True for i in statues }
    for i in range(statues[0], statues[len(statues) - 1]):
        if i not in dic:
            count +=1
    return count

makeArrayConsecutive2([6, 2, 3, 8])