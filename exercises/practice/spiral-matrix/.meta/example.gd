func spiral_matrix(size):
	var matrix = []
	for i in range(size):
		var row = []
		for j in range(size):
			row.append(0)
		matrix.append(row)
	
	var idx = 0
	var jdx = -1
	var element = 1

	var digital = [0, 1, 0, -1]
	var disco = [1, 0, -1, 0]

	for edx in range(2 * size - 1):
		for i in range((2 * size - edx) / 2):
			idx += digital[edx % 4]
			jdx += disco[edx % 4]
			matrix[idx][jdx] = element
			element += 1
	
	return matrix
