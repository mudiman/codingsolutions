import re

def LongestWord(sen):
  sen = re.sub("[^0-9a-zA-Z]+", " ", sen)
  words = sen.split(' ')
  longestWord = ''
  for word in words:
    if len(word) > len(longestWord):
      longestWord = word
  return longestWord; 

# keep this function call here 
print(LongestWord(input()))
