func test_cleans_the_number(solution_script):
	var got = solution_script.clean("(223) 456-7890")
	var want = "2234567890"
	return [got, want]


func test_cleans_numbers_with_dots(solution_script):
	var got = solution_script.clean("223.456.7890")
	var want = "2234567890"
	return [got, want]


func test_cleans_numbers_with_multiple_spaces(solution_script):
	var got = solution_script.clean("223 456   7890   ")
	var want = "2234567890"
	return [got, want]


func test_invalid_when_9_digits(solution_script):
	var got = solution_script.clean("123456789")
	var want = null
	return [got, want]


func test_invalid_when_11_digits_does_not_start_with_a_1(solution_script):
	var got = solution_script.clean("22234567890")
	var want = null
	return [got, want]


func test_valid_when_11_digits_and_starting_with_1(solution_script):
	var got = solution_script.clean("12234567890")
	var want = "2234567890"
	return [got, want]


func test_valid_when_11_digits_and_starting_with_1_even_with_punctuation(solution_script):
	var got = solution_script.clean("+1 (223) 456-7890")
	var want = "2234567890"
	return [got, want]


func test_invalid_when_more_than_11_digits(solution_script):
	var got = solution_script.clean("321234567890")
	var want = null
	return [got, want]


func test_invalid_with_letters(solution_script):
	var got = solution_script.clean("523-abc-7890")
	var want = null
	return [got, want]


func test_invalid_with_punctuations(solution_script):
	var got = solution_script.clean("523-@:!-7890")
	var want = null
	return [got, want]


func test_invalid_if_area_code_starts_with_0(solution_script):
	var got = solution_script.clean("(023) 456-7890")
	var want = null
	return [got, want]


func test_invalid_if_area_code_starts_with_1(solution_script):
	var got = solution_script.clean("(123) 456-7890")
	var want = null
	return [got, want]


func test_invalid_if_exchange_code_starts_with_0(solution_script):
	var got = solution_script.clean("(223) 056-7890")
	var want = null
	return [got, want]


func test_invalid_if_exchange_code_starts_with_1(solution_script):
	var got = solution_script.clean("(223) 156-7890")
	var want = null
	return [got, want]


func test_invalid_if_area_code_starts_with_0_on_valid_11_digit_number(solution_script):
	var got = solution_script.clean("1 (023) 456-7890")
	var want = null
	return [got, want]


func test_invalid_if_area_code_starts_with_1_on_valid_11_digit_number(solution_script):
	var got = solution_script.clean("1 (123) 456-7890")
	var want = null
	return [got, want]


func test_invalid_if_exchange_code_starts_with_0_on_valid_11_digit_number(solution_script):
	var got = solution_script.clean("1 (223) 056-7890")
	var want = null
	return [got, want]


func test_invalid_if_exchange_code_starts_with_1_on_valid_11_digit_number(solution_script):
	var got = solution_script.clean("1 (223) 156-7890")
	var want = null
	return [got, want]
