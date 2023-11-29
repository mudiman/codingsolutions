class Solution:
    def reverse(self, x: int) -> int:
        res = 0
        polarity = -1 if x < 0 else 1
        x = abs(x)
        while x > 0:
            num = x % 10
            x = x // 10
            res = (res * 10) + num
        if res > 2**31 - 1 or x < -2**31:
            return 0
        return res * polarity


print(Solution().reverse(1534236469))
