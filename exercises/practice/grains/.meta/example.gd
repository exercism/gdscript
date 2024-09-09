func square(number):
	if number < 1 or number > 64:
		return null
	return int(pow(2, number - 1))


func total():
	return int(pow(2, 64) - 1)
