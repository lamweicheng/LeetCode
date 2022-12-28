class Solution:
    def minStoneSum(self, piles: List[int], k: int) -> int:
        piles = [-x for x in piles]
        heapify(piles)
        for _ in range(k): heapreplace(piles, piles[0]//2)
        return -sum(piles)