func test_year_not_divisible_by_4(solution_script):
	return [solution_script.leap(2015), false]


func test_year_divisible_by_2_not_4(solution_script):
	return [solution_script.leap(1970), false]


func test_year_divisible_by_4_not_100(solution_script):
	return [solution_script.leap(1996), true]


func test_year_divisible_by_4_and_5(solution_script):
	return [solution_script.leap(1960), true]


func test_year_divisible_by_100_not_400(solution_script):
	return [solution_script.leap(2100), false]


func test_year_divisible_by_100_not_3(solution_script):
	return [solution_script.leap(1900), false]


func test_year_divisible_by_400(solution_script):
	return [solution_script.leap(2000), true]


func test_year_divisible_by_400_not_125(solution_script):
	return [solution_script.leap(2400), true]


func test_year_divisible_by_200_not_400(solution_script):
	return [ solution_script.leap(1800), false]
