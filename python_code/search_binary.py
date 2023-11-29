
def binary_search(arr, left, right, target):
    if right <= left:
        return None
    mid = (left + right) // 2

    if (arr[mid] == target):
        return mid
    elif arr[mid] > target:
        return binary_search(arr, left, mid-1, target)
    else:
        return binary_search(arr, mid+1, right, target)


arr = [1, 2, 3, 4, 5, 6, 8, 9]
print(binary_search(arr, 0, len(arr), 7))
print(binary_search(arr, 0, len(arr), 8))
print(binary_search(arr, 0, len(arr), 0))
# print(binary_search_recursive(arr, 7, 0, len(arr)))
