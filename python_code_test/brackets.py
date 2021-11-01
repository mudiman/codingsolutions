def isBalanced(s):
    brackets = {
        ')': '(',
        '}': '{',
        ']': '[',
    }
    stack = []
    for i in range(len(s)):
        c = s[i]
        if s[i] in brackets.values():
            stack.append(s[i])
        elif s[i] in brackets.keys() and len(stack) > 0 and brackets[s[i]] == stack[-1]:
            stack.pop()
        elif s[i] in brackets.keys():
            return 'NO'
    return 'YES' if len(stack) == 0 else 'NO'


print(isBalanced('}][}}(}][))]'))

# 6
# }][}}(}][))]
# [](){()}
# ()
# ({}([][]))[]()
# {)[](}]}]}))}(())(
# ([[)

# MINE

# NO
# YES
# YES
# YES
# NO
# NO


