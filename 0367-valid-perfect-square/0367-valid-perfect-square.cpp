class Solution {
public:
    bool isPerfectSquare(int num) {
        
        long x = 0;
        while (x*x < num)
            x+=1;
        
        return x*x == num;
        
            
        
    }
};