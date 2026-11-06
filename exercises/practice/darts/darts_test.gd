func test_missed_target(solution_script):
	var x = -9
	var y = 9
	var want = 0
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_on_the_outer_circle(solution_script):
	var x = 0
	var y = 10
	var want = 1
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_on_the_middle_circle(solution_script):
	var x = -5
	var y = 0
	var want = 5
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_on_the_inner_circle(solution_script):
	var x = 0
	var y = -1
	var want = 10
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_exactly_on_center(solution_script):
	var x = 0
	var y = 0
	var want = 10
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_near_the_center(solution_script):
	var x = -0.1
	var y = -0.1
	var want = 10
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_just_within_the_inner_circle(solution_script):
	var x = 0.7
	var y = 0.7
	var want = 10
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_just_outside_the_inner_circle(solution_script):
	var x = 0.8
	var y = -0.8
	var want = 5
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_just_within_the_middle_circle(solution_script):
	var x = -3.5
	var y = 3.5
	var want = 5
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_just_outside_the_middle_circle(solution_script):
	var x = -3.6
	var y = -3.6
	var want = 1
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_just_within_the_outer_circle(solution_script):
	var x = -7.0
	var y = 7.0
	var want = 1
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_just_outside_the_outer_circle(solution_script):
	var x = 7.1
	var y = -7.1
	var want = 0
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]


func test_asymmetric_position_between_the_inner_and_middle_circles(solution_script):
	var x = 0.5
	var y = -4
	var want = 5
	var got = solution_script.score(x, y)
	return [got, want, "score(%d, %d) = %s, expected %s" % [x, y, got, want]]
