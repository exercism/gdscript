func test_grains_on_square_1(solution_script):
	return [solution_script.square(1), 1]


func test_grains_on_square_2(solution_script):
	return [solution_script.square(2), 2]


func test_grains_on_square_3(solution_script):
	return [solution_script.square(3), 4]


func test_grains_on_square_4(solution_script):
	return [solution_script.square(4), 8]


func test_grains_on_square_16(solution_script):
	return [solution_script.square(16), 32768]


func test_grains_on_square_32(solution_script):
	return [solution_script.square(32), 2147483648]


func test_grains_on_square_64(solution_script):
	return [solution_script.square(64), 9223372036854775808]


func test_square_0_is_invalid(solution_script):
	return [solution_script.square(0), null]


func test_negative_square_is_invalid(solution_script):
	return [solution_script.square(-1), null]


func test_square_greater_than_64_is_invalid(solution_script):
	return [solution_script.square(65), null]


func test_returns_the_total_number_of_grains_on_the_board(solution_script):
	return [solution_script.total(), 18446744073709551615]


