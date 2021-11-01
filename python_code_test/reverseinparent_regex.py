import re

# def reverseInParentheses(inputString):
#     pattern = re.compile(r'\([\w]*\)')
#     for m in re.finditer(pattern, inputString):
#         group = m.group()
#         inputString = inputString.replace(group, group[1:len(group) - 1][::-1])
#     if inputString.find("(") > -1:
#         inputString = reverseInParentheses(inputString)
#     return inputString


def reverseInParentheses(inputString):
    for i in range(len(inputString)):
        if inputString[i] == '(':
            start = i 
        if inputString[i] == ')':
            end = i 
            return reverseInParentheses(inputString[:start] + inputString[start+1 : end][::-1] + inputString[end+1:])
    return inputString

print(reverseInParentheses("()"))
