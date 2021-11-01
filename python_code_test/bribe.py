def minimumBribes(q):
    count = 0
    d = dict(enumerate(q,1))
    for i in range(len(d),1,-1):
        if d[i]==i:
            continue
        if d[i-1]==i:
            count+=1
            d[i], d[i-1] = d[i-1], d[i]
        elif d[i-2]==i:
            j = i-2
            while j < i:
                d[j], d[j+1] = d[j+1], d[j]
                j +=1
            count+=2
        else:
            return "Too chaotic"
    return count


print(minimumBribes(list(map(int, "1 2 5 3 7 8 6 4".split(" ")))))