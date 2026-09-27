func steps(number: int) -> int:
	if number < 1:
		return ERR_INVALID_PARAMETER
	var result: int = 0
	while number > 1:
		if number % 2 == 1:
			number = number * 3 + 1
		else:
			number /= 2
		result += 1
	return result
