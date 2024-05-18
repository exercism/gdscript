func test_empty_string(solution_script):
	var str = ""
	var expected = ""
	return [solution_script.reverse(str), expected]


func test_a_word(solution_script):
	var str = "robot"
	var expected = "tobor"
	return [solution_script.reverse(str), expected]


func test_a_capitalized_word(solution_script):
	var str = "Ramen"
	var expected = "nemaR"
	return [solution_script.reverse(str), expected]


func test_a_sentence_with_punctuation(solution_script):
	var str = "I'm hungry!"
	var expected = "!yrgnuh m'I"
	return [solution_script.reverse(str), expected]


func test_a_palindrome(solution_script):
	var str = "racecar"
	var expected = "racecar"
	return [solution_script.reverse(str), expected]


func test_an_even_sized_word(solution_script):
	var str = "drawer"
	var expected = "reward"
	return [solution_script.reverse(str), expected]
