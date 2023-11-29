def check(n, m, games):

    if len(games) < int(n/2):
        return False

    players = {}
    for i in range(1, n + 1):
        players[i] = []

    for game in games:
        team_1 = game[:int(n/(2))]
        team_2 = game[int(n/2):]
        for player in team_1:
            players[player] = list(set(players[player] + team_2))
        for player in team_2:
            players[player] = list(set(players[player] + team_1))

    for key, value in players.items():
        if len(value) != (n - 1):
            return False
    return True


# print(check(2, 1, [[1, 2]])) # True
# print(check(4, 2, [[1, 2, 3, 4], [4, 3, 1, 2]])) # False
# print(check(4, 2, [[1, 2, 3, 4], [1, 3, 2, 4]])) # True
# print(check(6, 6, [[1, 6, 3, 4, 5, 2], [6, 4, 2, 3, 1, 5], [4, 2, 1, 5, 6, 3], [4, 5, 1, 6, 2, 3], [3, 2, 5, 1, 6, 4], [2, 3, 6, 4, 1, 5]])) # True
# print(check(6, 6, [[3, 1, 4, 5, 6, 2], [5, 3, 2, 4, 1, 6], [5, 3, 6, 4, 2, 1], [6, 5, 3, 2, 1, 4], [5, 4, 1, 2, 6, 3], [4, 1, 6, 2, 5, 3]])) # False


#1≤𝑛≤20,000 ,  1≤𝑚≤30
# print(check(2, 1, [[2, 1]])) # True
# print(check(2, 2, [[2, 1], [1, 2]])) # True
#print(check(4, 3, [[1, 2, 3, 4], [4, 3, 1, 2], [1, 3, 2, 4]])) # False
#print(check(4, 1, [[1, 2, 3, 4]])) # True
print(check(4, 1, [[1, 2, 1, 1]])) # True

# print(check(1,1, [1]))