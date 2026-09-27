func sum_of_squares(num: int) -> int:
	var result: int = 0
	for i in range(num + 1):
		result += i * i
	return result


func square_of_sum(num: int) -> int:
	var result: int = 0
	for i in range(num + 1):
		result += i
	return result * result


func difference_of_squares(num: int) -> int:
	return square_of_sum(num) - sum_of_squares(num)
