func factors(number: int) -> Array:
	var out = []
	var divisor = 2
	while number > 1:
		if number % divisor == 0:
			number /= divisor
			out.append(divisor)
		elif divisor == 2:
			divisor = 3
		else:
			divisor += 2
	return out
