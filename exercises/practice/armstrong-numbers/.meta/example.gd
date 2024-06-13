func is_armstrong_number(number):
	var digits = str(number)
	var result = 0
	for n in digits:
		result += pow(int(n), len(digits))
	return result == number
