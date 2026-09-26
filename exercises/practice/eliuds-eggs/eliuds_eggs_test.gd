func test_0_eggs(solution_script):
	var got = solution_script.egg_count(0)
	var want = 0
	return [got, want]


func test_1_egg(solution_script):
	var got = solution_script.egg_count(16)
	var want = 1
	return [got, want]


func test_4_eggs(solution_script):
	var got = solution_script.egg_count(89)
	var want = 4
	return [got, want]


func test_13_eggs(solution_script):
	var got = solution_script.egg_count(2000000000)
	var want = 13
	return [got, want]
