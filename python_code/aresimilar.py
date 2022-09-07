def areSimilar(a, b):
    diff = []
    if sum(a) != sum(b):
        return False
    for i in range(len(a)):
        if a[i] != b[i]:
            diff.append([a[i] , b[i]])
        if len(diff) > 2:
            return False
    if len(diff) == 0:
        return True
    elif len(diff) == 1:
        return False
    diff[0].sort()
    diff[1].sort()
    return True if diff[0] == diff[1] else False

print(areSimilar([2,3,1], [1,3,2]))
