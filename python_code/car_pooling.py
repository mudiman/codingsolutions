import numpy as np

def solution(p, s):
    array1 = np.array(p)
    array2 = np.array(s)
    subtracted_array = np.subtract(p, s)
    diff = list(subtracted_array)
    avail_seats = new_avail_seats = sum(diff)
    
    while (True):
        min = numpy.where(diff == numpy.amin(diff))
        max = numpy.where(diff == numpy.amax(diff))
        new_avail_seats -= p[min[0][0]]
        p[min[0][0]] = 'N'
        if avail_seats == new_avail_seats:
            break
        avail_seats = new_avail_seats
    
    res = 0
    for i in diff:
        if (i >= 0):
            res +=1

    return res 


print(solution([1,4,1], [1,5,1]))
# print(solution([10,10]))
# print(solution([3,0,5]))

2342
2572
0230
N030
N01N


141
151
010
N00


2342
2452
0110
N000

