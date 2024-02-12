func test_finds_a_value_in_an_array_with_one_element(solution_script):
	return [solution_script.find([6], 6), 0]


func test_finds_a_value_in_the_middle_of_an_array(solution_script):
	return [solution_script.find([1, 3, 4, 6, 8, 9, 11], 6), 3]


func test_finds_a_value_at_the_beginning_of_an_array(solution_script):
	return [solution_script.find([1, 3, 4, 6, 8, 9, 11], 1), 0]


func test_finds_a_value_at_the_end_of_an_array(solution_script):
	return [solution_script.find([1, 3, 4, 6, 8, 9, 11], 11), 6]


func test_finds_a_value_in_an_array_of_odd_length(solution_script):
	return [
		solution_script.find([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634], 144), 9
	]


func test_finds_a_value_in_an_array_of_even_length(solution_script):
	return [solution_script.find([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377], 21), 5]


func test_identifies_that_a_value_is_not_included_in_the_array(solution_script):
	return [solution_script.find([1, 3, 4, 6, 8, 9, 11], 7), false]


func test_a_value_smaller_than_the_array_s_smallest_value_is_not_found(solution_script):
	return [solution_script.find([1, 3, 4, 6, 8, 9, 11], 0), false]


func test_a_value_larger_than_the_array_s_largest_value_is_not_found(solution_script):
	return [solution_script.find([1, 3, 4, 6, 8, 9, 11], 13), false]


func test_nothing_is_found_in_an_empty_array(solution_script):
	return [solution_script.find([], 1), false]


func test_nothing_is_found_when_the_left_and_right_bounds_cross(solution_script):
	return [solution_script.find([1, 2], 0), false]
