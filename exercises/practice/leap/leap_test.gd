func test_year_not_divisible_by_4(solution_script):
	return [false, solution_script.leap(2015)]

func test_year_divisible_by_2_not_4(solution_script):
	 return [false, solution_script.leap(1970)]

func test_year_divisible_by_4_not_100(solution_script):
	 return [true, solution_script.leap(1996)]

func test_year_divisible_by_4_and_5(solution_script):
	 return [true, solution_script.leap(1960)]

func test_year_divisible_by_100_not_400(solution_script):
	 return [false, solution_script.leap(2100)]

func test_year_divisible_by_100_not_3(solution_script):
	 return [false, solution_script.leap(1900)]

func test_year_divisible_by_400(solution_script):
	 return [true, solution_script.leap(2000)]

func test_year_divisible_by_400_not_125(solution_script):
	 return [true, solution_script.leap(2400)]

func test_year_divisible_by_200_not_400(solution_script):
	 return [false, solution_script.leap(1800)]
