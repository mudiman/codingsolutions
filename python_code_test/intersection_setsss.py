
def FindIntersection(strArr):
  a = map(int, strArr[0].split(', '))
  b = map(int, strArr[1].split(', '))
  c = list(set(a) & set(b))
  c.sort()
  return ','.join(map(str, c))

print(FindIntersection(input()))