func test_root_of_1(solution_script):
	var got = solution_script.square_root(1)
	var want = 1
	return [got, want, "square_root(%d) = %s, expected %s" % [1, got, want]]


func test_root_of_4(solution_script):
	var got = solution_script.square_root(4)
	var want = 2
	return [got, want, "square_root(%d) = %s, expected %s" % [4, got, want]]


func test_root_of_25(solution_script):
	var got = solution_script.square_root(25)
	var want = 5
	return [got, want, "square_root(%d) = %s, expected %s" % [25, got, want]]


func test_root_of_81(solution_script):
	var got = solution_script.square_root(81)
	var want = 9
	return [got, want, "square_root(%d) = %s, expected %s" % [81, got, want]]


func test_root_of_196(solution_script):
	var got = solution_script.square_root(196)
	var want = 14
	return [got, want, "square_root(%d) = %s, expected %s" % [196, got, want]]


func test_root_of_65025(solution_script):
	var got = solution_script.square_root(65025)
	var want = 255
	return [got, want, "square_root(%d) = %s, expected %s" % [65025, got, want]]
