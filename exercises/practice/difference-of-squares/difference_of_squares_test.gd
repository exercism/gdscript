func test_square_of_sum_1(solution_script):
	var inputs = 1
	var expected = 1
	return [solution_script.square_of_sum(inputs), expected]


func test_square_of_sum_5(solution_script):
	var inputs = 5
	var expected = 225
	return [solution_script.square_of_sum(inputs), expected]


func test_square_of_sum_100(solution_script):
	var inputs = 100
	var expected = 25502500
	return [solution_script.square_of_sum(inputs), expected]


func test_sum_of_squares_1(solution_script):
	var inputs = 1
	var expected = 1
	return [solution_script.sum_of_squares(inputs), expected]


func test_sum_of_squares_5(solution_script):
	var inputs = 5
	var expected = 55
	return [solution_script.sum_of_squares(inputs), expected]


func test_sum_of_squares_100(solution_script):
	var inputs = 100
	var expected = 338350
	return [solution_script.sum_of_squares(inputs), expected]


func test_difference_of_squares_1(solution_script):
	var inputs = 1
	var expected = 0
	return [solution_script.difference_of_squares(inputs), expected]


func test_difference_of_squares_5(solution_script):
	var inputs = 5
	var expected = 170
	return [solution_script.difference_of_squares(inputs), expected]


func test_difference_of_squares_100(solution_script):
	var inputs = 100
	var expected = 25164150
	return [solution_script.difference_of_squares(inputs), expected]
