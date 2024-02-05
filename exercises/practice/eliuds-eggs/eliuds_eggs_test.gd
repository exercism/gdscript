func test_0_eggs(solution_script):
	return [solution_script.egg_count(0), 0]


func test_1_egg(solution_script):
	return [solution_script.egg_count(16), 1]


func test_4_eggs(solution_script):
	return [solution_script.egg_count(89), 4]


func test_13_eggs(solution_script):
	return [solution_script.egg_count(2000000000), 13]
