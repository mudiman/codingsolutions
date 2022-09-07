#https://app.codesignal.com/interview-practice/task/Rqtm4Yv8GhHYXJYPY/description
import re

def solution(s, n):
    #  [^1-9]*[1-9]\d*[^1-9]  means start with not number or not then  there should be non zero number follow by any digits and then any non digit
    # repeat this [^1-9]*[1-9]\d*[^1-9]  n-1 times then next  [^1-9]*[1-9]\d*[^1-9] is answer
    pattern = "[^1-9]*[1-9]\d*[^1-9]*"*(n-1)+"[^1-9]*([1-9]\d*)[^1-9]*"
    return re.match(pattern, s).group(1)



print(solution('8one 003number 201numbers li-000233le number444', 4))
#print(solution('Everyone hates error 404', 1))
#4
#print(solution('LaS003920tP3rEt4t04Yte0023s3t', 4))
#584511290939644184700867021026771007612398051168360441323
#print(solution('=_aaYiM*}&0077|D))ztIV00012432748730156644204805614898523099655216oio0854102350044141_|YDL0584511290939644184700867021026771007612398051168360441323oIc:G*0204864749576405915~wqgN0037594999439741539584332{F&wjxiLy-mE', 4))