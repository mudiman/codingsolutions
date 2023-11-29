import string


class Solution:
    def myAtoi(self, s: str) -> int:
        s = s.strip()
        if s == '':
            return 0
        i = 0
        if s[0] == '-' or s[0] == "+":
            i += 1
        while i < len(s):
            if s[i] not in string.digits:
                break
            i += 1
        res = s[:i]
        if res == '' or res == '-' or res == '+':
            return 0
        res = int(float(res))
        if -2**31 > res:
            return -2**31
        elif res > (2**31 - 1):
            return 2**31 - 1
        else:
            return res


# print(Solution().myAtoi("3.14159"))
# print(Solution().myAtoi("words and 987"))
# print(Solution().myAtoi("4193 with words"))
# print(Solution().myAtoi("4193"))
# print(Solution().myAtoi("-4193"))
# print(Solution().myAtoi("0032"))
# print(Solution().myAtoi("617673396283946"))
# print(Solution().myAtoi("-617673396283946"))
# print(Solution().myAtoi("-0012a42"))
# print(Solution().myAtoi("-5-"))
# print(Solution().myAtoi("-+12"))
print(Solution().myAtoi("+1"))
