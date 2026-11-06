func test_0_eggs(solution_script):
	var got = solution_script.egg_count(0)
	var want = 0
	return [got, want, "egg_count(%d) = %s, expected %d" % [0, got, want]]


func test_1_egg(solution_script):
	var got = solution_script.egg_count(16)
	var want = 1
	return [got, want, "egg_count(%d) = %s, expected %d" % [16, got, want]]


func test_4_eggs(solution_script):
	var got = solution_script.egg_count(89)
	var want = 4
	return [got, want, "egg_count(%d) = %s, expected %d" % [89, got, want]]


func test_13_eggs(solution_script):
	var got = solution_script.egg_count(2000000000)
	var want = 13
	return [got, want, "egg_count(%d) = %s, expected %d" % [2000000000, got, want]]
