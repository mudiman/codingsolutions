class Account:
    def __init__(self, name, accountNo, limit):
        self.name = name
        self.accountNo = accountNo
        self.balance = 0
        self.currency = limit[0]
        self.limit = self._parseAmount(limit)
        self.valid = self._luhn(accountNo)
        
    def _parseAmount(self,amount):
        return int(amount[1:])
        
    def charge(self, amount):
        if self.valid == False:
            return
        amountInt = self._parseAmount(amount)
        if (self.balance + amountInt) <= self.limit:
            self.balance = self.balance + amountInt
            return True
        return False
    
    def credit(self, amount):
        if self.valid == False:
            return
        amountInt = self._parseAmount(amount)
        self.balance = self.balance - amountInt
    
    def status(self):
        if self.valid == False:
            return [self.name, "error"]
        else:
            return [self.name, self.currency + str(self.balance)]
        
    def _luhn(self, accountArr):
        #accountNo = '799273987'
        isSecond = False
        sumDigits = 0
        for i in range(len(accountArr) - 1, -1, -1):
            no = int(accountArr[i])
            if (isSecond == True):
                no =no * 2
                if no > 9:
                    no = self._sumDigits(no)
            isSecond = not isSecond
            sumDigits += no

        return sumDigits % 10 == 0

    def _sumDigits(self,n):
        second = n % 10
        first = n // 10
        return first + second
    
def creditCardProvider(operations):
    
    accounts = {}
    for operation in operations:
        if operation[0] == "Add":
            [action, name, accountNo, limit] = operation
            accounts[name] = Account(name,accountNo, limit)
        elif operation[0] == "Charge":
            [action, name, amount] = operation
            accounts[name].charge(amount)
        elif operation[0] == "Credit":
            [action, name, amount] = operation
            accounts[name].credit(amount)
    
    
    keys = sorted(accounts.keys(), key=str.lower)
    result = []
    for key in keys:
        result.append(accounts[key].status())
    
    return result



print(creditCardProvider([["Add","Tom","4111111111111111","$10"], 
 ["Charge","Tom","$9"], 
 ["Charge","Tom","$4"], 
 ["Charge","Tom","$3"], 
 ["Charge","Tom","$2"], 
 ["Charge","Tom","$1"]]))