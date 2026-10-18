func saddle_points(matrix):
	if len(matrix) == 0:
		return []
	var columns = len(matrix[0])
	if columns == 0:
		return []
	var col_minimums = []
	for col in range(columns):
		var col_min = matrix[0][col]
		for row_idx in range(len(matrix)):
			col_min = min(col_min, matrix[row_idx][col])
		col_minimums.append(col_min)
	var points = []
	for row_idx in range(len(matrix)):
		var row = matrix[row_idx]
		var row_max = row[0]
		for col_idx in range(columns):
			row_max = max(row_max, row[col_idx])
		for col_idx in range(columns):
			var val = row[col_idx]
			if val == row_max and val == col_minimums[col_idx]:
				points.append([row_idx + 1, col_idx + 1])
    return points


