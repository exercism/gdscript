func test_empty(solution_script):
	var inputs = []
	var want = []
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_no_nesting(solution_script):
	var inputs = [0, 1, 2]
	var want = [0, 1, 2]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_flattens_a_nested_array(solution_script):
	var inputs = [[[]]]
	var want = []
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_flattens_array_with_just_integers_present(solution_script):
	var inputs = [1, [2, 3, 4, 5, 6, 7], 8]
	var want = [1, 2, 3, 4, 5, 6, 7, 8]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_5_level_nesting(solution_script):
	var inputs = [0, 2, [[2, 3], 8, 100, 4, [[[50]]]], -2]
	var want = [0, 2, 2, 3, 8, 100, 4, 50, -2]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_6_level_nesting(solution_script):
	var inputs = [1, [2, [[3]], [4, [[5]]], 6, 7], 8]
	var want = [1, 2, 3, 4, 5, 6, 7, 8]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_null_values_are_omitted_from_the_final_result(solution_script):
	var inputs = [1, 2, null]
	var want = [1, 2]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_consecutive_null_values_at_the_front_of_the_array_are_omitted_from_the_final_result(solution_script):
	var inputs = [null, null, 3]
	var want = [3]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_consecutive_null_values_in_the_middle_of_the_array_are_omitted_from_the_final_result(solution_script):
	var inputs = [1, null, null, 4]
	var want = [1, 4]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_6_level_nested_array_with_null_values(solution_script):
	var inputs = [0, 2, [[2, 3], 8, [[100]], null, [[null]]], -2]
	var want = [0, 2, 2, 3, 8, 100, -2]
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]


func test_all_values_in_nested_array_are_null(solution_script):
	var inputs = [null, [[[null]]], null, null, [[null, null], null], null]
	var want = []
	var got = solution_script.flatten(inputs)
	return [got, want, "flatten(%s) = %s, expected %s" % [inputs, got, want]]
