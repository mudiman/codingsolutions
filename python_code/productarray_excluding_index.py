# return product array with each element having product of all number but the index no

def solution(arr):
    size = len(arr)
    left, right = [1] * size, [1] * size
    product_array = []

    for i in range(1, size):
        left[i] = left[i - 1] * arr[i - 1]

    for i in range(1, size):
        right[i] = right[i - 1] * arr[::-1][i - 1]

    for i in range(size):
        product_array.append(left[i] * right[::-1][i])

    return product_array


print(solution([1, 2, 3, 4]))  # [24,12,8,6]
