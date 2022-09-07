
def pairs(k, arr):
    diffMap = {}
    count = 0
    for v in arr:
        diffMap[v] = 1
    for v in arr:
        if abs(k-v) != v and abs(k-v) in diffMap:
            count +=1
    return count

#46759
print(pairs(2,[1,5,3,4,2]))