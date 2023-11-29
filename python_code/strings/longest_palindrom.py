class Solution:
    def __init__(self):
        self.res = ''
        self.size = 0

    def scan(self, s, l, r):
        while l >= 0 and r < len(s) and s[l] == s[r]:
            if (r-l+1) > self.size:
                self.size = (r - l + 1)
                self.res = s[l: r + 1]
            l -= 1
            r += 1

    def longestPalindrome(self, s: str) -> str:
        for i in range(len(s)):
            l, r = i, i
            self.scan(s, l, r)
            l, r = i, i+1
            self.scan(s, l, r)

        return self.res


print(Solution().longestPalindrome("abb"))
print(Solution().longestPalindrome("babae"))
print(Solution().longestPalindrome("babad"))
print(Solution().longestPalindrome("cbbd"))
print(Solution().longestPalindrome("a"))
# print(Solution().longestPalindrome("aacabdkacaa"))
# print(Solution().longestPalindrome("babaddtattarrattatddetartrateedredividerb"))
