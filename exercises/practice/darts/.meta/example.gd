func score(x, y):
	var distance = sqrt(pow(x, 2) + pow(y, 2))
	if distance <= 1:
		return 10
	if distance <= 5:
		return 5
	if distance <= 10:
		return 1
	return 0
