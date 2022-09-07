def process(arr):
    transaction, balance = arr
    if transaction % 5 != 0:
        return balance
    elif transaction > balance:
        return balance
    else:
        return balance-transaction-0.5




print(process([300 , 120.00]))