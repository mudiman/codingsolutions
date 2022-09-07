def countSort(arr):
    output = [0 for i in range(len(arr))]
    count = {i:0 for i in range(256)}
    for v in arr:
        count[ord(v)] += 1
    for i in range(1, max(arr) + 1):
        count[i] += count[i-1]
    for v in arr:
        output[count[v] - 1] = v
        count[v] -=1

    return output


print(countSort([1, 4, 1, 2, 7, 5, 2]))
