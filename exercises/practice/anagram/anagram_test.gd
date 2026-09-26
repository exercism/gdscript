func test_no_matches(solution_script):
	var subject  	= "diaper"
	var candidates  = ["hello", "world", "zombies", "pants"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]


func test_detects_two_anagrams(solution_script):
	var subject  	= "solemn"
	var candidates  = ["lemons", "cherry", "melons"]
	var expected 	= ["lemons", "melons"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_does_not_detect_anagram_subsets(solution_script):
	var subject  	= "listen"
	var candidates  = ["enlists", "google", "inlets", "banana"]
	var expected 	= ["inlets"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_detects_three_anagrams(solution_script):
	var subject  	= "allergy"
	var candidates  = ["gallery", "ballerina", "regally", "clergy", "largely", "leading"]
	var expected 	= ["gallery", "regally", "largely"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_detects_multiple_anagrams_with_different_case(solution_script):
	var subject  	= "nose"
	var candidates  = ["Eons", "ONES"]
	var expected 	= ["Eons", "ONES"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_does_not_detect_non_anagrams_with_identical_checksum(solution_script):
	var subject  	= "mass"
	var candidates  = ["last"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]


func test_detects_anagrams_case_insensitively(solution_script):
	var subject  	= "Orchestra"
	var candidates  = ["cashregister", "Carthorse", "radishes"]
	var expected 	= ["Carthorse"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_detects_anagrams_using_case_insensitive_subject(solution_script):
	var subject  	= "Orchestra"
	var candidates  = ["cashregister", "carthorse", "radishes"]
	var expected 	= ["carthorse"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_detects_anagrams_using_case_insensitive_possible_matches(solution_script):
	var subject  	= "orchestra"
	var candidates  = ["cashregister", "Carthorse", "radishes"]
	var expected 	= ["Carthorse"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_does_not_detect_an_anagram_if_the_original_word_is_repeated(solution_script):
	var subject  	= "go"
	var candidates  = ["goGoGO"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]


func test_anagrams_must_use_all_letters_exactly_once(solution_script):
	var subject  	= "tapper"
	var candidates  = ["patter"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]


func test_words_are_not_anagrams_of_themselves(solution_script):
	var subject  	= "BANANA"
	var candidates  = ["BANANA"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]


func test_words_are_not_anagrams_of_themselves_even_if_letter_case_is_partially_different(solution_script):
	var subject  	= "BANANA"
	var candidates  = ["Banana"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]


func test_words_are_not_anagrams_of_themselves_even_if_letter_case_is_completely_different(solution_script):
	var subject  	= "BANANA"
	var candidates  = ["banana"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]


func test_words_other_than_themselves_can_be_anagrams(solution_script):
	var subject  	= "LISTEN"
	var candidates  = ["LISTEN", "Silent"]
	var expected 	= ["Silent"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_handles_case_of_greek_letters(solution_script):
	var subject  	= "ΑΒΓ"
	var candidates  = ["ΒΓΑ", "ΒΓΔ", "γβα", "αβγ"]
	var expected 	= ["ΒΓΑ", "γβα"]
	return [solution_script.find_anagram(subject, candidates), expected]


func test_different_characters_may_have_the_same_bytes(solution_script):
	var subject  	= "a⬂"
	var candidates  = ["€a"]
	var expected 	= []
	return [solution_script.find_anagram(subject, candidates), expected]

