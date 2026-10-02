func classify(number: int):
	if number < 1:
		return null

	var aliquot = 0
	for i in range(1, number):
		if number % i == 0:
			aliquot += i
	if aliquot == number:
		return "perfect"
	elif aliquot > number:
		return "abundant"
	else:
		return "deficient"

