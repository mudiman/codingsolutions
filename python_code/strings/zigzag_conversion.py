class Solution:
    def printMatrix(self, matrix, numRows):
        res = ''
        for j in range(numRows - 1, -1, -1):
            for i in range(len(matrix)):
                res += matrix[i][j]
        return res

    def convert(self, s: str, numRows: int) -> str:
        if numRows == 1 or len(s) == 1:
            return s
        i = 0
        res = []
        vertical = True
        while i < (len(s)):
            row = ['']*numRows
            c = 0
            if vertical:
                while c < numRows and (c + i) < len(s):
                    row[(numRows - c - 1)] = s[c + i]
                    c += 1
                res.append(row)
                i += c - 1
            else:
                c = 1
                while c < numRows - 1 and (c + i) < len(s):
                    row = ['']*numRows
                    row[c] = s[c + i]
                    res.append(row)
                    c += 1
                i += c
            vertical = not vertical
        return self.printMatrix(res, numRows)


print(Solution().convert("PAYPALISHIRING", 4))
print(Solution().convert("ABC", 2))
