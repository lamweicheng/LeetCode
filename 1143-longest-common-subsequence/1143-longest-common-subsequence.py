class Solution:
    def longestCommonSubsequence(self, text1: str, text2: str) -> int:
        def long(X, Y, m, n, seen):
                k = (m,n)
                if m == 0 or n == 0:
                    return 0
                if k not in seen:

                    if X[m-1] == Y[n-1]:
                        seen[k] = long(X, Y, m-1, n-1, seen) + 1
                    else:
                        a = long(X, Y, m-1, n, seen)
                        b = long(X, Y, m, n-1, seen)
                        seen[k] = max(a, b)
                return seen[k]

        x = len(text1) 
        y = len(text2)
        seen = {}
        return long(text1, text2, x, y, seen)