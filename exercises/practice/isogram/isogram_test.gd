func test_empty_string(solution_script):
	var got = solution_script.is_isogram("")
	var want = true
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["", got, want]]


func test_isogram_with_only_lower_case_characters(solution_script):
	var got = solution_script.is_isogram("isogram")
	var want = true
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["isogram", got, want]]


func test_word_with_one_duplicated_character(solution_script):
	var got = solution_script.is_isogram("eleven")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["eleven", got, want]]


func test_word_with_one_duplicated_character_from_the_end_of_the_alphabet(solution_script):
	var got = solution_script.is_isogram("zzyzx")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["zzyzx", got, want]]


func test_longest_reported_english_isogram(solution_script):
	var got = solution_script.is_isogram("subdermatoglyphic")
	var want = true
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["subdermatoglyphic", got, want]]


func test_word_with_duplicated_character_in_mixed_case(solution_script):
	var got = solution_script.is_isogram("Alphabet")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["Alphabet", got, want]]


func test_word_with_duplicated_character_in_mixed_case_lowercase_first(solution_script):
	var got = solution_script.is_isogram("alphAbet")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["alphAbet", got, want]]


func test_hypothetical_isogrammic_word_with_hyphen(solution_script):
	var got = solution_script.is_isogram("thumbscrew-japingly")
	var want = true
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["thumbscrew-japingly", got, want]]


func test_hypothetical_word_with_duplicated_character_following_hyphen(solution_script):
	var got = solution_script.is_isogram("thumbscrew-jappingly")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["thumbscrew-jappingly", got, want]]


func test_isogram_with_duplicated_hyphen(solution_script):
	var got = solution_script.is_isogram("six-year-old")
	var want = true
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["six-year-old", got, want]]


func test_made_up_name_that_is_an_isogram(solution_script):
	var got = solution_script.is_isogram("Emily Jung Schwartzkopf")
	var want = true
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["Emily Jung Schwartzkopf", got, want]]


func test_duplicated_character_in_the_middle(solution_script):
	var got = solution_script.is_isogram("accentor")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["accentor", got, want]]


func test_same_first_and_last_characters(solution_script):
	var got = solution_script.is_isogram("angola")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["angola", got, want]]


func test_word_with_duplicated_character_and_with_two_hyphens(solution_script):
	var got = solution_script.is_isogram("up-to-date")
	var want = false
	return [got, want, "is_isogram(%s) = %s, expected %s" % ["up-to-date", got, want]]
