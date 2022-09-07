from typing import List


class Solution:
    def __init__(self):
        self.record = {}
    
    def getInvalidTransaction(self):
        invalid = []
        for name in self.record.keys():
            for trans in self.record[name]:
                if trans['valid'] == False:
                    #f'{a:.2f}'

                    invalid.append(f'{name},{trans["time"]},{trans["amount"]},{trans["city"]}')
        return invalid
        
    def validateTransaction(self, name, time,amount,city):
        valid = True
        if (amount > 1000):
            valid = False
        if name in self.record.keys():
            for trans in self.record[name]:
                if (trans['city'] != city
                   and abs(trans['time'] - time) <= 60):
                    trans['valid'] = False
                    valid = False
        return valid
                    
    
    def invalidTransactions(self, transactions: List[str]) -> List[str]:
        for transaction in transactions:
            name, time,amount,city = transaction.split(",")
            time = int(time)
            amount = int(amount)
            if name not in self.record.keys(): self.record[name] = []
            valid = self.validateTransaction(name, time,amount,city)
            self.record[name].append({
                    'time': time,
                    'city': city,
                    'amount': amount,
                    'valid': valid
                })
        return self.getInvalidTransaction()

#["bob,627,1973,amsterdam","alex,387,885,bangkok","alex,355,1029,barcelona"]
sol = Solution()
print(sol.invalidTransactions(["bob,627,1973,amsterdam",
"alex,387,885,bangkok",
"alex,355,1029,barcelona",
"alex,587,402,bangkok",
"chalicefy,973,830,barcelona",
"alex,932,86,bangkok",
"bob,188,989,amsterdam"]))