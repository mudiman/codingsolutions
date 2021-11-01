def mergeSort(arr):
    if len(arr) <= 1:
        return arr
    
    mid = len(arr) //2
    l = arr[0:mid]
    r = arr[mid:]
    mergeSort(l)
    mergeSort(r)

    i=j=k=0
    while i < len(l) and j < len(r):
        if l[i] > r[j]:
            arr[k] = r[j]
            j +=1
        else:
            arr[k] = l[i]
            i +=1
        k += 1
    while i < len(l):
        arr[k] = l[i]
        i += 1 
        k += 1
    while j < len(r):
        arr[k] = r[j]
        j += 1 
        k += 1
    
    return arr


        



print(mergeSort([12, 11, 13, 5, 6, 7]))