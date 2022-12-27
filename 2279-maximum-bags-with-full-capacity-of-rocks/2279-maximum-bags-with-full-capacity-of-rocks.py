class Solution:
    def maximumBags(self, capacity: List[int], rocks: List[int], additionalRocks: int) -> int:
        remaining = []
        for i in range(len(rocks)):
            remaining.append(capacity[i]-rocks[i])
        remaining = sorted(remaining)
        total, count = 0, 0

        for val in remaining:
            total += val
            if total<=additionalRocks:
                count += 1
            else:
                break
        return count