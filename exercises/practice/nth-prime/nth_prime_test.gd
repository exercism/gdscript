func test_first_prime(solution_script):
	var got = solution_script.prime(1)
	var want = 2
	return [got, want, "prime(%d) = %s, expected %s" % [1, got, want]]


func test_second_prime(solution_script):
	var got = solution_script.prime(2)
	var want = 3
	return [got, want, "prime(%d) = %s, expected %s" % [2, got, want]]


func test_sixth_prime(solution_script):
	var got = solution_script.prime(6)
	var want = 13
	return [got, want, "prime(%d) = %s, expected %s" % [6, got, want]]


func test_big_prime(solution_script):
	var got = solution_script.prime(10001)
	var want = 104743
	return [got, want, "prime(%d) = %s, expected %s" % [10001, got, want]]


func test_there_is_no_zeroth_prime(solution_script):
	var got = solution_script.prime(0)
	var want = null
	return [got, want, "prime(%d) = %s, expected %s" % [0, got, want]]
