class Solution:
    def mostWordsFound(self, sentences: List[str]) -> int:
       
        #return max(len(word.split()) for word in sentences)
        return max(s.count(' ') for s in sentences) +1