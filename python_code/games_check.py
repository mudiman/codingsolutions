
def check(n, m, games):
    if m < n // 2:
        return False

    # Initialize a list of sets to represent connections between players
    connections = [set() for _ in range(n)]

    for game in games:
        team_1 = game[:n // 2]
        team_2 = game[n // 2:]

        # Update connections for team 1 players
        for player1 in team_1:
            connections[player1 - 1].update(team_2)

        # Update connections for team 2 players
        for player2 in team_2:
            connections[player2 - 1].update(team_1)

    for player_connections in connections:
        if len(player_connections) != n - 1:
            return False

    return True


# print(check(2, 1, [[1, 2]]))
print(check(4, 2, [[1, 2, 3, 4], [4, 3, 1, 2]]))
print(check(4, 2, [[1, 2, 3, 4], [1, 3, 2, 4]]))
# print(check(6, 6, [[1, 6, 3, 4, 5, 2], [6, 4, 2, 3, 1, 5], [4, 2, 1, 5, 6, 3], [
#       4, 5, 1, 6, 2, 3], [3, 2, 5, 1, 6, 4], [2, 3, 6, 4, 1, 5]]))
# print(check(6, 6, [[3, 1, 4, 5, 6, 2], [5, 3, 2, 4, 1, 6], [5, 3, 6, 4, 2, 1], [
#       6, 5, 3, 2, 1, 4], [5, 4, 1, 2, 6, 3], [4, 1, 6, 2, 5, 3]]))
