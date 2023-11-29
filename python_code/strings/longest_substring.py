class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        seen = dict()
        submx = mx = ""
        for chr in s:
            if not seen.get(chr):
                seen[chr] = True
                submx = submx + chr
            else:
                mx = submx if len(submx) > len(mx) else mx
                while len(submx) > 0:
                    first = submx[0]
                    del seen[first]
                    submx = submx[1:]
                    if first == chr:
                        submx = submx + chr
                        seen[chr] = True
                        break
        mx = submx if len(submx) > len(mx) else mx
        return len(mx)


print(Solution().lengthOfLongestSubstring("asfbc"))
print(Solution().lengthOfLongestSubstring(" "))
print(Solution().lengthOfLongestSubstring("dvdf"))
print(Solution().lengthOfLongestSubstring("abcabcbb"))
