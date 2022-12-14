import math
class Solution:
    def mySqrt(self, x: int) -> int:
    
       # return floor(math.sqrt(x))
       # return floor(x **0.5)
        
        if x < 2:
            return x
        x0 = x
        x1 = (x0 + x/x0)/2
        while abs(x0 -x1 )>= 1:
            x0=x1
            x1 = (x0 + x/x0)/2
        return int(x1)
        
        
        
#         if x<2:
#             return x
        
#         x0 = x
#         x1 = (x0+x/x0)/2
#         while abs(x0-x1) >=1:
#             x0 =x1
#             x1 = (x0+x/x0)/2
#         return int(x1)
        
        
        