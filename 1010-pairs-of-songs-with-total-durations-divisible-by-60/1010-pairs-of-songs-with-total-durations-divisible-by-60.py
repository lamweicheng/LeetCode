class Solution:
    def numPairsDivisibleBy60(self, time: List[int]) -> int:
        result = 0
        arr = [0 for _ in range(60)]
        for duration in (duration % 60 for duration in time):
            pair = 0 if duration == 0 else 60 - duration
            result += arr[pair]
            arr[duration] += 1
        return result