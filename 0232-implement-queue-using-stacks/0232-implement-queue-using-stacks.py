class MyQueue:

    def __init__(self):
        self.Stack1 = []
        self.Stack2 = []

    def push(self, x: int) -> None:
        self.Stack1.append(x)

    def pop(self) -> int:
         if len(self.Stack1) != 0:
            while(len(self.Stack1)>0):
                last = self.Stack1.pop()
                self.Stack2.append(last)
                print (self.Stack1,self.Stack2)
            pop = self.Stack2.pop()
            while(len(self.Stack2)>0):
                self.Stack1.append(self.Stack2.pop())
            return pop

    def peek(self) -> int:
         if len(self.Stack1) != 0:
            return self.Stack1[0]

    def empty(self) -> bool:
        return len(self.Stack1) == 0 


# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()