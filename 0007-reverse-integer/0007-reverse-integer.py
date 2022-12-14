class Solution:
    def reverse(self, x: int) -> int:
        
        if x<= -pow(2,31) or x>= pow(2,31)-1 :
            return 0
        else:
            stringX = str(x)
            if x >= 0:
                reverseStr= stringX[::-1]
            else:
                temp = stringX[1:]
                temp2 = temp[::-1]
                reverseStr = "-" + temp2
            if int(reverseStr) >= pow(2,31)-1 or int(reverseStr) <= -pow(2,31): 
                return 0
            else:
                return int (reverseStr)
        
        
        
        
        
        