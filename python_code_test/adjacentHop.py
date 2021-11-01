def avoidObstacles(inputArray):
    hopSize = 2
    position = 0
    while position <= max(inputArray):
        if  position in inputArray:
            hopSize += 1
            position = hopSize
        else:
            position += hopSize
    return hopSize
    



print(avoidObstacles([2,3]))