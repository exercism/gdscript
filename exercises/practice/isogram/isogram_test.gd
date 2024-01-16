func test_empty_string(solution_script):
	return [solution_script.is_isogram(""), true]


func test_isogram_with_only_lower_case_characters(solution_script):
	return [solution_script.is_isogram("isogram"), true]


func test_word_with_one_duplicated_character(solution_script):
	return [solution_script.is_isogram("eleven"), false]


func test_word_with_one_duplicated_character_from_the_end_of_the_alphabet(solution_script):
	return [solution_script.is_isogram("zzyzx"), false]


func test_longest_reported_english_isogram(solution_script):
	return [solution_script.is_isogram("subdermatoglyphic"), true]


func test_word_with_duplicated_character_in_mixed_case(solution_script):
	return [solution_script.is_isogram("Alphabet"), false]


func test_word_with_duplicated_character_in_mixed_case_lowercase_first(solution_script):
	return [solution_script.is_isogram("alphAbet"), false]


func test_hypothetical_isogrammic_word_with_hyphen(solution_script):
	return [solution_script.is_isogram("thumbscrew-japingly"), true]


func test_hypothetical_word_with_duplicated_character_following_hyphen(solution_script):
	return [solution_script.is_isogram("thumbscrew-jappingly"), false]


func test_isogram_with_duplicated_hyphen(solution_script):
	return [solution_script.is_isogram("six-year-old"), true]


func test_made_up_name_that_is_an_isogram(solution_script):
	return [solution_script.is_isogram("Emily Jung Schwartzkopf"), true]


func test_duplicated_character_in_the_middle(solution_script):
	return [solution_script.is_isogram("accentor"), false]


func test_same_first_and_last_characters(solution_script):
	return [solution_script.is_isogram("angola"), false]


func test_word_with_duplicated_character_and_with_two_hyphens(solution_script):
	return [solution_script.is_isogram("up-to-date"), false]
