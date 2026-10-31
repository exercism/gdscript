const PATTERNS = [
	# Horizontal
	[[0, 0], [1, 0], [2, 0]],
	[[0, 1], [1, 1], [2, 1]],
	[[0, 2], [1, 2], [2, 2]],
	# Vertical
	[[0, 0], [0, 1], [0, 2]],
	[[1, 0], [1, 1], [1, 2]],
	[[2, 0], [2, 1], [2, 2]],
	# Diagonal
	[[0, 0], [1, 1], [2, 2]],
	[[0, 2], [1, 1], [2, 0]],
]


func gamestate(board):
	var count = {"X": 0, "O": 0, " ": 0}
	for row in board:
		for val in row:
			count[val] += 1
	if count["X"] < count["O"]:
		return null
	if count["X"] > count["O"] + 1:
		return null

	var wins = {"X": false, "O": false}
	for player in wins:
		for pattern in PATTERNS:
			var all = true
			for position in pattern:
				if board[position[1]][position[0]] != player:
					all = false
			if all:
				wins[player] = true

	# The game stops after the first win.
	if wins["X"] and wins["O"]:
		return null
	# If X wins, O cannot move and should have fewer moves.
	if wins["X"] and count["X"] == count["O"]:
		return null
	# If O wins, X cannot move and should have the same number as moves.
	if wins["O"] and count["X"] > count["O"]:
		return null

	if wins["X"] or wins["O"]:
		return "win"
	if count[" "] == 0:
		return "draw"
	return "ongoing"
