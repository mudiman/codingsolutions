def equlibiriamIndex(num):
    for i in range(1, len(num) - 1):
        left = sum(num[0:i])
        right = sum(num[i+1:])
        if left == right:
            return i
    return -1


print(equlibiriamIndex([0,8,7,5,6,-3]))