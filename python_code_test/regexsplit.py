import re

def solution(str):
    sentences = re.split('[\.\?\!]+', str)
    words = []
    for sentence in sentences:
        temp = re.split('[ ]+|\n+', sentence)
        words.append(len(temp))
    return max(words)

print(solution("We are  test. This Coder  ?"))
