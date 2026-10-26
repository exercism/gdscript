func rebase(input_base, digits, output_base):
	if input_base < 2 or output_base < 2:
		return null

	var value = 0
	for digit in digits:
		if digit < 0 or digit >= input_base:
			return null
		value = value * input_base + digit

	if value == 0:
		return [0]

	var rebased = []
	while value > 0:
		rebased.append(value % output_base)
		value /= output_base
	rebased.reverse()
	return rebased
