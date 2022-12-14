class Solution:
    def largestPerimeter(self, nums: List[int]) -> int:
        
        len_Nums, sorted_Nums = len(nums), sorted(nums)
        
        for i in range (len_Nums -2 , 0 ,-1 ):
            if sorted_Nums[i-1] + sorted_Nums [i] > sorted_Nums [i+1]:
                return sorted_Nums[i-1] + sorted_Nums [i] + sorted_Nums [i+1]
        return 0
        