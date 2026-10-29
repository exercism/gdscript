func get_cell(garden, x, y):
	if x < 0 or y < 0 or y >= len(garden) or x >= len(garden[y]) or garden[y][x] == " ":
		return 0
	return 1


func neighbors(garden, x, y):
	var total = 0
	for dx in [-1, 0, 1]:
		for dy in [-1, 0, 1]:
			total += get_cell(garden, x + dx, y + dy)
	return total - get_cell(garden, x, y)


func annotate(garden):
	var out = []
	for y in range(len(garden)):
		var row = []
		for x in range(len(garden[y])):
			if garden[y][x] == "*":
				row.append("*")
			elif neighbors(garden, x, y) == 0:
				row.append(" ")
			else:
				row.append("%d" % neighbors(garden, x, y))
		out.append("".join(row))
	return out
