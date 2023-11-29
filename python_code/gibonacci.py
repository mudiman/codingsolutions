def gibonacci(n, x, y):
    if n == 0:
        return x
    elif n == 1:
        return y
    else:
        return gibonacci(n - 1, x, y) - gibonacci(n - 2, x, y)


# test cases
print(gibonacci(0, 0, 1))
print(gibonacci(1, 0, 1))
print(gibonacci(2, 0, 1))
print(gibonacci(3, 0, 1))
