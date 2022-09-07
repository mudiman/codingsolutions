
import numpy as np

def solution(image):
    imagenp = np.array(image)
    size = len(image[0]) * len(image)
    cols = len(image[0]) - 2
    rows = (len(image) - 2)
    res = [[0 for i in range(cols)] for j in range(rows)]
    #res = [[0] * (len(image[0]) - 2)] * (len(image) - 2)

    for col in range(cols):
        for row in range(rows):
                res[row][col] = single(imagenp[row: row + 3, col : col + 3])
    return res
            
    
def single(image):
    print(image)
    size = len(image[0]) * len(image)
    total = sum(sum(row) for row in image)  
    return int(total / size)



print(solution([[36,0,18,9], 
 [27,54,9,0], 
 [81,63,72,45]]))