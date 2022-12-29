class Solution:
    def getOrder(self, tasks: List[List[int]]) -> List[int]:
        tasks = sorted((taskTime,proT,i) for i,(taskTime,proT) in enumerate(tasks))

        index_order, heap = [], []

        time = 0

        for taskTime, proT, i in tasks:

            while heap and taskTime > time:

                pt, idx = heapq.heappop(heap)

                index_order.append(idx)

                time += pt


            time = max(time, taskTime)
            heapq.heappush(heap, (proT,i))

        return index_order + [i for _, i in sorted(heap)] 
   