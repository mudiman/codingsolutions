"""
Imagine we have an image. We'll represent this image as a simple 2D array where every pixel is a 1 or a 0.

The image you get is known to have potentially many distinct rectangles of 0s on a background of 1's. Write a function that takes in the image and returns the coordinates of all the 0 rectangles -- top-left and bottom-right; or top-left, width and height.

image1 = [
  [0, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
  [0, 1, 1, 0, 0, 0, 1],
  [1, 0, 1, 0, 0, 0, 1],
  [1, 0, 1, 1, 1, 1, 1],
  [1, 0, 1, 0, 0, 1, 1],
  [1, 1, 1, 0, 0, 1, 1],
  [1, 1, 1, 1, 1, 1, 0],
]

Sample output variations (only one is necessary):

findRectangles(image1) =>
  // (using top-left-row-column and bottom-right):
  [
    [[0,0],[0,0]],
    [[2,0],[2,0]],
    [[2,3],[3,5]],
    [[3,1],[5,1]],
    [[5,3],[6,4]],
    [[7,6],[7,6]],
  ]
  // (using top-left-row-column and width/height):
  [
    [[0,0],[1,1]],
    [[2,0],[1,1]],
    [[2,3],[3,2]],
    [[3,1],[1,3]],
    [[5,3],[2,2]],
    [[7,6],[1,1]],
  ]

Other test cases:

image2 = [
  [0],
]

findRectangles(image2) =>
  // (using top-left-row-column and bottom-right):
  [
    [[0,0],[0,0]],
  ]

  // (using top-left-row-column and width/height):
  [
    [[0,0],[1,1]],
  ]

image3 = [
  [1],
]

findRectangles(image3) => []

image4 = [
  [1, 1, 1, 1, 1],
  [1, 0, 0, 0, 1],
  [1, 0, 0, 0, 1],
  [1, 0, 0, 0, 1],
  [1, 1, 1, 1, 1],
]

findRectangles(image4) =>
  // (using top-left-row-column, and bottom-right or width/height):
  [
    [[1,1],[3,3]],
  ]

n: number of rows in the input image
m: number of columns in the input image


"""
image1 = [
    [0, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [0, 1, 1, 0, 0, 0, 1],
    [1, 0, 1, 0, 0, 0, 1],
    [1, 0, 1, 1, 1, 1, 1],
    [1, 0, 1, 0, 0, 1, 1],
    [1, 1, 1, 0, 0, 1, 1],
    [1, 1, 1, 1, 1, 1, 0],
]

image2 = [
    [0],
]

image3 = [
    [1],
]

image4 = [
    [1, 1, 1, 1, 1],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [1, 1, 1, 1, 1],
]


def rectCordinate(matrix, i, j):
    rowSize = len(matrix) - 1 
    columnSize = len(matrix[0]) - 1
    starti = i
    startj = j
    w = width = 0
    while w == 0 and i < rowSize:
        i += 1
        width += 1
        w = matrix[i][startj]
    if i < rowSize:
        width -= 1

    h = height = 0
    while h == 0 and j < columnSize:
        j += 1
        height += 1
        h = matrix[starti][j]

    if j < columnSize:
        height -= 1
    return [starti + width, startj + height]


def rectScanned(scanned, x, y):
  for rect in scanned:
    (sx,sy,ex,ey) = rect
    if (x >= sx and x <= ex and y >=sy and y <=ey):
        return True
  return False


def rectStart(matrix):
    rowSize = len(matrix)
    columnSize = len(matrix[0])
    scanned = {'x': {}, 'y': {}}
    res = []
    # startx end x starty and end y
    for x in range(rowSize):
        for y in range(columnSize):
            if matrix[x][y] == 0 and not rectScanned(res, x, y):
                [ex, ey] = rectCordinate(matrix, x, y)
                res.append((x, y, ex, ey))

    return res


print(rectStart([
    [0, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1],
    [0, 1, 1, 0, 0, 0, 1],
    [1, 0, 1, 0, 0, 0, 1],
    [1, 0, 1, 1, 1, 1, 1],
    [1, 0, 1, 0, 0, 1, 1],
    [1, 1, 1, 0, 0, 1, 1], 
    [1, 1, 1, 1, 1, 1, 0],
]))
