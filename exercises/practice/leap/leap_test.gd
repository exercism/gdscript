func test_year_not_divisible_by_4_in_common_year(solution_script):
	var got = solution_script.leap(2015)
	var want = false
	return [got, want, "leap(%d) = %s, expected %s" % [2015, got, want]]


func test_year_divisible_by_2_not_divisible_by_4_in_common_year(solution_script):
	var got = solution_script.leap(1970)
	var want = false
	return [got, want, "leap(%d) = %s, expected %s" % [1970, got, want]]


func test_year_divisible_by_4_not_divisible_by_100_in_leap_year(solution_script):
	var got = solution_script.leap(1996)
	var want = true
	return [got, want, "leap(%d) = %s, expected %s" % [1996, got, want]]


func test_year_divisible_by_4_and_5_is_still_a_leap_year(solution_script):
	var got = solution_script.leap(1960)
	var want = true
	return [got, want, "leap(%d) = %s, expected %s" % [1960, got, want]]


func test_year_divisible_by_100_not_divisible_by_400_in_common_year(solution_script):
	var got = solution_script.leap(2100)
	var want = false
	return [got, want, "leap(%d) = %s, expected %s" % [2100, got, want]]


func test_year_divisible_by_100_but_not_by_3_is_still_not_a_leap_year(solution_script):
	var got = solution_script.leap(1900)
	var want = false
	return [got, want, "leap(%d) = %s, expected %s" % [1900, got, want]]


func test_year_divisible_by_400_is_leap_year(solution_script):
	var got = solution_script.leap(2000)
	var want = true
	return [got, want, "leap(%d) = %s, expected %s" % [2000, got, want]]


func test_year_divisible_by_400_but_not_by_125_is_still_a_leap_year(solution_script):
	var got = solution_script.leap(2400)
	var want = true
	return [got, want, "leap(%d) = %s, expected %s" % [2400, got, want]]


func test_year_divisible_by_200_not_divisible_by_400_in_common_year(solution_script):
	var got = solution_script.leap(1800)
	var want = false
	return [got, want, "leap(%d) = %s, expected %s" % [1800, got, want]]
