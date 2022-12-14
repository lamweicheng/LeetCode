class Solution:
    def buildArray(self, nums: List[int]) -> List[int]:
#         newList = []
        
#         for index in nums:
#             newList.append(nums[index])
#         return newList

        return [ nums[index] for index in nums]