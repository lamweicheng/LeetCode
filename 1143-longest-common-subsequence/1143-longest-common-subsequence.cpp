class Solution {
public:
    int longestCommonSubsequence(string text1, string text2) {
        int l1=text1.length(), l2=text2.length();
        vector<vector<int>> c(l1+1, vector<int>(l2+1, 0));
        for(int i=0;i<l1;i++)
            for(int j=0;j<l2;j++)
             if(text1[i]==text2[j]) c[i+1][j+1]=1+c[i][j];
                else c[i+1][j+1]=max(c[i+1][j], c[i][j+1]);

            return c[l1][l2];
    }
};