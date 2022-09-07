import numpy

def solution(arr):
    polution = sum(arr)
    filter = 0
    while (sum(arr) > polution / 2):
        result = numpy.where(arr == numpy.amax(arr))
        arr[result[0][0]] = arr[result[0][0]]/2
        filter +=1
    return filter 


print(solution([5,19,8,1]))
print(solution([10,10]))
print(solution([3,0,5]))
