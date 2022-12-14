class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        
#         sumLeft = 0
#         sumRight= sum(nums)
#         for i in range(len(nums)):
#             sumRight -= nums [i]
#             if sumLeft == sumRight:
#                 return i 
#             sumLeft += nums[i]
#         return -1

        for i in range(len(nums)):
            if sum(nums[:i]) == sum(nums[i+1:]):
                return i    
        return -1