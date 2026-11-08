func test_square_of_sum_1(solution_script):
	var inputs = 1
	var want = 1
	var got = solution_script.square_of_sum(inputs)
	return [got, want, "square_of_sum(%s) = %s, expected %s" % [inputs, got, want]]


func test_square_of_sum_5(solution_script):
	var inputs = 5
	var want = 225
	var got = solution_script.square_of_sum(inputs)
	return [got, want, "square_of_sum(%s) = %s, expected %s" % [inputs, got, want]]


func test_square_of_sum_100(solution_script):
	var inputs = 100
	var want = 25502500
	var got = solution_script.square_of_sum(inputs)
	return [got, want, "square_of_sum(%s) = %s, expected %s" % [inputs, got, want]]


func test_sum_of_squares_1(solution_script):
	var inputs = 1
	var want = 1
	var got = solution_script.sum_of_squares(inputs)
	return [got, want, "sum_of_squares(%s) = %s, expected %s" % [inputs, got, want]]


func test_sum_of_squares_5(solution_script):
	var inputs = 5
	var want = 55
	var got = solution_script.sum_of_squares(inputs)
	return [got, want, "sum_of_squares(%s) = %s, expected %s" % [inputs, got, want]]


func test_sum_of_squares_100(solution_script):
	var inputs = 100
	var want = 338350
	var got = solution_script.sum_of_squares(inputs)
	return [got, want, "sum_of_squares(%s) = %s, expected %s" % [inputs, got, want]]


func test_difference_of_squares_1(solution_script):
	var inputs = 1
	var want = 0
	var got = solution_script.difference_of_squares(inputs)
	return [got, want, "difference_of_squares(%s) = %s, expected %s" % [inputs, got, want]]


func test_difference_of_squares_5(solution_script):
	var inputs = 5
	var want = 170
	var got = solution_script.difference_of_squares(inputs)
	return [got, want, "difference_of_squares(%s) = %s, expected %s" % [inputs, got, want]]


func test_difference_of_squares_100(solution_script):
	var inputs = 100
	var want = 25164150
	var got = solution_script.difference_of_squares(inputs)
	return [got, want, "difference_of_squares(%s) = %s, expected %s" % [inputs, got, want]]
