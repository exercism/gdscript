func test_empty_strands(solution_script):
	var values   = ["", ""]
	var expected = 0
	return [solution_script.distance(values[0], values[1]), expected]


func test_single_letter_identical_strands(solution_script):
	var values   = ["A", "A"]
	var expected = 0
	return [solution_script.distance(values[0], values[1]), expected]


func test_single_letter_different_strands(solution_script):
	var values   = ["G", "T"]
	var expected = 1
	return [solution_script.distance(values[0], values[1]), expected]


func test_long_identical_strands(solution_script):
	var values   = ["GGACTGAAATCTG", "GGACTGAAATCTG"]
	var expected = 0
	return [solution_script.distance(values[0], values[1]), expected]


func test_long_different_strands(solution_script):
	var values   = ["GGACGGATTCTG", "AGGACGGATTCT"]
	var expected = 9
	return [solution_script.distance(values[0], values[1]), expected]


