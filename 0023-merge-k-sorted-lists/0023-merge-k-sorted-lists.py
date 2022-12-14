# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeKLists(self, lists: List[Optional[ListNode]]) -> Optional[ListNode]:
    
        node_list=[]
        t0 = t = ListNode(0)
        
        #store all nodes in node_list
        for l in lists:
            while l:
                node_list.append(l)
                l=l.next
                
        #sort node_list by node value
        node_list.sort(key = lambda x: x.val)
        
        #construct linked list
        for n in node_list:
            t.next = n
            t = t.next
            
        return t0.next