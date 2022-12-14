class Solution:
    def countOdds(self, low: int, high: int) -> int:
        
#         count = 0
#         while low <= high:
#             if low % 2== 1:
#                 count +=1
#             low+=1    
#         return count

        # if low % 2== 0:
        #     low+=1
        # if high %2 ==0:
        #     high-=1
        # return ((high-low)//2 )+1
        
        #return (high + 1)//2  - (low//2)
        
        oddlow_case = ((high - low)//2) + 1
        evenlow_case = (high - low)/2
        # if low % 2 == 1:
        #     return oddlow_case
        # else:
        #     return ceil(evenlow_case)
        
        return ceil(evenlow_case) if low%2 != 1 else oddlow_case
        
        
        