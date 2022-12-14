class Solution {
public:
    bool isPalindrome(int x) {
        int original = x;
        long reversed = 0;
        int remainder = 0;
            
        if (x <0)
            return false;
        while (x!= 0){
            remainder = x %10;
            reversed = reversed * 10 + remainder ;
            x /= 10;
            floor(x);
    }
        return reversed == original;
    }
};