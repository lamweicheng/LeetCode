class Solution:
    def myPow(self, x: float, n: int) -> float:
        pow = 1
        if n < 0:
            n = (-n)
            x = 1/x
        while n:

            # if `n` is odd, multiply the result by `x`
            if n & 1:
                pow *= x

            # divide `n` by 2
            n = n >> 1

            # multiply `x` by itself
            x = x * x

        # return result
        return pow