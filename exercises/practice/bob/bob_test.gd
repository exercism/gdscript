func test_stating_something(solution_script):
	var value    = "Tom-ay-to, tom-aaaah-to."
	var expected = "Whatever."
	return [solution_script.response(value), expected]


func test_shouting(solution_script):
	var value = "WATCH OUT!"
	var expected = "Whoa, chill out!"
	return [solution_script.response(value), expected]


func test_shouting_gibberish(solution_script):
	var value = "FCECDFCAAB"
	var expected = "Whoa, chill out!"
	return [solution_script.response(value), expected]


func test_asking_a_question(solution_script):
	var value = "Does this cryogenic chamber make me look fat?"
	var expected = "Sure."
	return [solution_script.response(value), expected]


func test_asking_a_numeric_question(solution_script):
	var value = "You are, what, like 15?"
	var expected = "Sure."
	return [solution_script.response(value), expected]


func test_asking_gibberish(solution_script):
	var value = "fffbbcbeab?"
	var expected = "Sure."
	return [solution_script.response(value), expected]


func test_talking_forcefully(solution_script):
	var value = "Hi there!"
	var expected = "Whatever."
	return [solution_script.response(value), expected]


func test_using_acronyms_in_regular_speech(solution_script):
	var value = "It's OK if you don't want to go work for NASA."
	var expected = "Whatever."
	return [solution_script.response(value), expected]


func test_forceful_question(solution_script):
	var value = "WHAT'S GOING ON?"
	var expected = "Calm down, I know what I'm doing!"
	return [solution_script.response(value), expected]


func test_shouting_numbers(solution_script):
	var value = "1, 2, 3 GO!"
	var expected = "Whoa, chill out!"
	return [solution_script.response(value), expected]


func test_no_letters(solution_script):
	var value = "1, 2, 3"
	var expected = "Whatever."
	return [solution_script.response(value), expected]


func test_question_with_no_letters(solution_script):
	var value = "4?"
	var expected = "Sure."
	return [solution_script.response(value), expected]


func test_shouting_with_special_characters(solution_script):
	var value = "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"
	var expected = "Whoa, chill out!"
	return [solution_script.response(value), expected]


func test_shouting_with_no_exclamation_mark(solution_script):
	var value = "I HATE THE DENTIST"
	var expected = "Whoa, chill out!"
	return [solution_script.response(value), expected]


func test_statement_containing_question_mark(solution_script):
	var value = "Ending with ? means a question."
	var expected = "Whatever."
	return [solution_script.response(value), expected]


func test_non_letters_with_question(solution_script):
	var value = ":) ?"
	var expected = "Sure."
	return [solution_script.response(value), expected]


func test_prattling_on(solution_script):
	var value = "Wait! Hang on. Are you going to be OK?"
	var expected = "Sure."
	return [solution_script.response(value), expected]


func test_silence(solution_script):
	var value = ""
	var expected = "Fine. Be that way!"
	return [solution_script.response(value), expected]


func test_prolonged_silence(solution_script):
	var value = "          "
	var expected = "Fine. Be that way!"
	return [solution_script.response(value), expected]


func test_alternate_silence(solution_script):
	var value = "\t\t\t\t\t\t\t\t\t\t"
	var expected = "Fine. Be that way!"
	return [solution_script.response(value), expected]


func test_multiple_line_question(solution_script):
	var value = "\nDoes this cryogenic chamber make me look fat?\nNo."
	var expected = "Whatever."
	return [solution_script.response(value), expected]


func test_starting_with_whitespace(solution_script):
	var value = "         hmmmmmmm..."
	var expected = "Whatever."
	return [solution_script.response(value), expected]


func test_ending_with_whitespace(solution_script):
	var value = "Okay if like my  spacebar  quite a bit?   "
	var expected = "Sure."
	return [solution_script.response(value), expected]


func test_other_whitespace(solution_script):
	var value = "\n\r \t"
	var expected = "Fine. Be that way!"
	return [solution_script.response(value), expected]


func test_non_question_ending_with_whitespace(solution_script):
	var value = "This is a statement ending with whitespace      "
	var expected = "Whatever."
	return [solution_script.response(value), expected]

