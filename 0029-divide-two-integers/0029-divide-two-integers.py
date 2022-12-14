class Solution:
    def divide(self, dividend: int, divisor: int) -> int:
    
        result = 0
        
        result = dividend/ divisor 
        
        if result > pow(2,31)-1:
            return (pow(2,31)-1)
        elif result< -pow(2,31):
            return -pow(2,31)        
        
        return int(result)