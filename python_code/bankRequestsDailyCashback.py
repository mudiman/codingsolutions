class Account:
    def __init__(self, holderId, balance):
        self.holderId = holderId
        self.balance = balance
        self.withdrawTransaction = {}

    def withdraw(self, amount, timestamp):
        if amount > self.balance:
            return False
        self.balance -= amount
        self.withdrawTransaction[timestamp] = amount
        return True

    def deposit(self, amount, timestamp):
        self.balance += amount

    def cashback(self, cashbackTimestamp):
        for timestamp in self.withdrawTransaction:
            test = (timestamp + 24*60*60)
            if test < cashbackTimestamp:
                self.balance += int(self.withdrawTransaction[timestamp] * 0.02)


def bankRequestsDailyCashback(balances, requests):
    accounts = {}
    for i in range(1, len(balances) + 1):
        accounts[i] = Account(i, int(balances[i - 1]))
    
    lastTimestamp = 0
    for i,request in enumerate(requests):
        [action, timestamp, accountNo, amount] = request.split(" ")
        if not int(accountNo) in accounts.keys():
             return [-(i+1)]
        if action == "withdraw":
            status = accounts[int(accountNo)].withdraw(int(amount), int(timestamp))
            if not status:
                return [-(i+1)]
        elif action == "deposit":
            accounts[int(accountNo)].deposit(int(amount), int(timestamp))
        lastTimestamp = int(timestamp)

    # cashback time
    res = []
    for id in accounts.keys():
        accounts[id].cashback(lastTimestamp)
        res.append(accounts[id].balance)
    return res


print(bankRequestsDailyCashback([1000, 1500],
            ["withdraw 1613327630 2 480", 
 "withdraw 1613327644 2 800", 
 "withdraw 1614105244 1 100", 
 "deposit 1614108844 2 200", 
 "withdraw 1614108845 2 150"]))
