
def solution(digits: str, num: str) -> int:
    """
    In array i already know the index of each charater in str
    I can interate num str and for each number i can take absolute diff of index from current index. 
    Current index with be first zero and each time i move to character in num i update its value with index of that character
    Before update currentIndex variable i will first note down absolute diff in sum variable to keep track of all time
    After going through all character in num i will have value of currentIndex in sum variable.
    I will return sum variable.
    """
    # currentIndex = 0
    # result = 0
    # for char in num:
    #     result += abs(currentIndex - digits.index(char))
    #     currentIndex = digits.index(char)

    # return result

    """
    I can improve complexity of this program as its now O(n)^2. If i loop over digits and store it in dictionary this 
    and above using digits.index
    """
    currentIndex = 0
    result = 0
    digitMap = dict()
    for key,value in enumerate(digits):
        digitMap[value] = key
        
    for char in num:
        result += abs(currentIndex - digitMap[char])
        currentIndex = digitMap[char]
    return result

"""
I will write some text cases starting with few in task
"""
print(solution("0123456789", "210"))
print(solution("8459761203", "5439"))


