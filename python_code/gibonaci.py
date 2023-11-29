# def gibonacci(n, x, y):
#     if n == 0:
#         return x
#     elif n == 1:
#         return y
#     else:
#         return gibonacci(n-1, x , y) - gibonacci(n - 2, x , y)

def gibonacci(n, x, y):
    gn_0 = x
    gn_1 = y
    if n == 0:
        return gn_0
    elif n == 1:
        return gn_1
    else:
        for i in range(1, n):
            gn = gn_1 - gn_0
            gn_0 = gn_1
            gn_1 = gn
        return gn

# test cases
print(gibonacci(0, 0, 1))
print(gibonacci(1, 0, 1))
print(gibonacci(2, 0, 1))
print(gibonacci(3, 0, 1))

# test cases with all zeros
print(gibonacci(0, 0, 0))
print(gibonacci(1, 0, 0))
print(gibonacci(2, 0, 0))
print(gibonacci(3, 0, 0))

# # test cases with random positive nos
print(gibonacci(0, 1000000000, 1000000000))
print(gibonacci(1, 1000000000, 1000000000))
print(gibonacci(2, 1000000000, 1000000000))
print(gibonacci(3, 1000000000, 1000000000))
print(gibonacci(4, 1000000000, 1000000000))
print(gibonacci(5, 1000000000, 1000000000))

# print(gibonacci(1000000000, 1000000000, 1000000000))