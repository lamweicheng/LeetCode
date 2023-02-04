class Solution {
    public int numberOfSteps(int num) {
        int stepsCount = 0;
        
        while (num != 0){
            
            //even number
            if(num % 2 == 0){
                num= num/2;
                stepsCount++;
            }else{
                num --;
                stepsCount++;
            }
        }
        
        return stepsCount;
    }
}