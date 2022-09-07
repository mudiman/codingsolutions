# def solution(matrix):
#     w = len(matrix[0])
#     h = len(matrix) 
#     sol = [[0 for i in range(w)] for j in range(h)]

#     for r in range(h):
#         for c in range(w):
#             if matrix[r][c] == True:
#                 incrementAdjacentNodes(sol, c, r, w - 1, h - 1)
#     print(sol)
#     return sol


# def incrementAdjacentNodes(sol, c, r, w, h):
#     if c > 0: sol[r][c-1] +=1
#     if c < w: sol[r][c+1] +=1
#     if r > 0: sol[r-1][c] +=1
#     if r < h: sol[r+1][c] +=1
#     if c > 0 and r > 0: sol[r-1][c-1] +=1
#     if c < w and r < h: sol[r+1][c+1] +=1
#     if c > 0 and r < h: sol[r+1][c-1] +=1
#     if c < w and r > 0: sol[r-1][c+1] +=1

# solution([[True,False,False,True], 
#  [False,False,True,False], 
#  [True,True,False,True]])

