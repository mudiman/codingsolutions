def sublist_with_equal_sum(l):
    if len(l) == 0:
        return None
    sumL = sum(l)
    if sumL % 2 == 1:
        return None
    targetSum = sumL/2
    runningSum = 0
    for i, num in enumerate(l):
        runningSum += num
        if runningSum == targetSum:
            return [l[:i + 1], l[i+1:]]

    return None


print(sublist_with_equal_sum([1, 2, 3]))
print(sublist_with_equal_sum([2, 4, 6, 8])) # failling
