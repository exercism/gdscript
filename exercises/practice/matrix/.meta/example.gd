class Matrix:
	var _matrix = null

	func _init(string):
		_matrix = []
		for line in string.split("\n"):
			var row = []
			for word in line.split(" "):
				row.append(int(word))
			_matrix.append(row)

	func row(number):
		return _matrix[number - 1]

	func column(number):
		var col = []
		for row in _matrix:
			col.append(row[number - 1])
		return col
