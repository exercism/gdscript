func square(num: int):
	if num < 1 or num > 63:
		return null
	return 2 ** (num - 1)


func total() -> int:
	return 2 ** 63 - 1
