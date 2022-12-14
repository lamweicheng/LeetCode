class Solution:
    def removeVowels(self, s: str) -> str:
        
#         list = ''
        
#         for letter in s:
#             if letter not in 'aeiou':
#                 list += letter 
#         return list

            # newlist = s
            # for letter in s:
            #     if letter in 'aeiou':
            #         newlist = newlist.replace(letter,'')
            # return newlist
            
        for letter in 'aeiou': 
            s = s.replace(letter, '')
        return s