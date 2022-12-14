class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        
        for index in range (1, len(nums)):
            nums[index] += nums[index-1]
        return nums
        
        
        
        # for i in range(1,len(nums)):
        #     nums[i] += nums[i-1]
        # return nums
        
        
        
        #return [sum(nums[:i+1]) for i in range(len(nums))]