func square_root(number: int):
	"""Return the square root of a number.

	Implements
	https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Binary_numeral_system_(base_2)
	using code from Wikipedia.
	"""
	if number < 1:
		return null

	var x = number
	var c = 0
	var d = 1 << 30
	while d > number:
		d >>= 2

	while d:
		if x >= c + d:
			x -= c + d
			c = (c >> 1) + d
		else:
			c >>= 1

		d >>= 2

	return c
