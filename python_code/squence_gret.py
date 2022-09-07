#https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG

def trySubSequence(change, sequence):
    for i in range(0, len(sequence) - 1):
        if (sequence[i] >= sequence[i + 1]):
            change += 1
        if change > 1:
            return False
    return True
        
def almostIncreasingSequence(sequence):
    change = 0
    delIndex = -1
    for i in range(0, len(sequence) - 1):
        if (sequence[i] >= sequence[i + 1]):
            change += 1
            delIndex = i
        if change > 1:
            return False
    if (delIndex > -1):
        sequence1 = sequence.copy()
        sequence2 = sequence.copy()
        del sequence1[delIndex]
        del sequence2[delIndex + 1]
        sub1 = trySubSequence(change, sequence1)
        sub2 = trySubSequence(change, sequence2)
        return sub1 or sub2
        
    return True

print(almostIncreasingSequence([3, 5, 67, 98, 3]))