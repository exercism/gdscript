func test_empty_sentence(solution_script):
	var input = ""
	var expected = false
	return [expected, solution_script.is_pangram(input)]


func test_perfect_lower_case(solution_script):
	var input = "abcdefghijklmnopqrstuvwxyz"
	var expected = true
	return [expected, solution_script.is_pangram(input)]


func test_the_quick_brown_fox_jumps_over_the_lazy_dog(solution_script):
	var input = "the quick brown fox jumps over the lazy dog"
	var expected = true
	return [expected, solution_script.is_pangram(input)]


func test_missing_the_letter_x(solution_script):
	var input = "a quick movement of the enemy will jeopardize five gunboats"
	var expected = false
	return [expected, solution_script.is_pangram(input)]


func test_missing_the_letter_h(solution_script):
	var input = "five boxing wizards jump quickly at it"
	var expected = false
	return [expected, solution_script.is_pangram(input)]


func test_with_underscores(solution_script):
	var input = "the_quick_brown_fox_jumps_over_the_lazy_dog"
	var expected = true
	return [expected, solution_script.is_pangram(input)]


func test_with_numbers(solution_script):
	var input = "the 1 quick brown fox jumps over the 2 lazy dogs"
	var expected = true
	return [expected, solution_script.is_pangram(input)]

func test_missing_letters_replaced_by_numbers(solution_script):
	var input = "7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog"
	var expected = false
	return [expected, solution_script.is_pangram(input)]


func test_mixed_case_and_punctuation(solution_script):
	var input = "\"Five quacking Zephyrs jolt my wax bed.\""
	var expected = true
	return [expected, solution_script.is_pangram(input)]


func test_case_insensitive(solution_script):
	var input = "abcdefghijklm ABCDEFGHIJKLM"
	var expected = false
	return [expected, solution_script.is_pangram(input)]
