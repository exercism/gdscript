func is_alive(matrix, row: int, col: int) -> bool:
	return (
		row >= 0
		and col >= 0
		and row < len(matrix)
		and col < len(matrix[row])
		and matrix[row][col] == 1
	)


func tick(matrix):
	var offsets = [
		[-1, -1],
		[-1, 0],
		[-1, 1],
		[0, -1],
		[0, 1],
		[1, -1],
		[1, 0],
		[1, 1],
	]
	var out = []
	for row_idx in range(len(matrix)):
		var row_out = []
		for col_idx in range(len(matrix[row_idx])):
			var neighbors = 0
			for delta in offsets:
				if is_alive(matrix, row_idx + delta[0], col_idx + delta[1]):
					neighbors += 1
			if neighbors == 3 or matrix[row_idx][col_idx] == 1 and neighbors == 2:
				row_out.append(1)
			else:
				row_out.append(0)
		out.append(row_out)
	return out
