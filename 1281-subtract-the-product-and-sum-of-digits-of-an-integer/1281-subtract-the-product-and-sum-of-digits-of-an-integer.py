class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        result = 0
        product_digits = 1
        sum_digits = 0
        while n!=0:
            product_digits *= n%10
            sum_digits += n%10
            n //= 10
        
        return sub(product_digits, sum_digits)