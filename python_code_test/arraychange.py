from collections import defaultdict

def palindromeRearranging(inputString):
    count = defaultdict(lambda: 0)
    for v in inputString:
        count[v] +=1
    
    odd = 0
    for v in count.values():
        if v % 2 != 0:
            odd += 1
        if odd > 1:
            return False
    
    return True


        


print(palindromeRearranging("aabbccd"))