func test_empty_sentence(solution_script):
	var got = solution_script.is_pangram("")
	var want = false
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["", got, want]]


func test_perfect_lower_case(solution_script):
	var got = solution_script.is_pangram("abcdefghijklmnopqrstuvwxyz")
	var want = true
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["abcdefghijklmnopqrstuvwxyz", got, want]]


func test_only_lower_case(solution_script):
	var got = solution_script.is_pangram("the quick brown fox jumps over the lazy dog")
	var want = true
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["the quick brown fox jumps over the lazy dog", got, want]]


func test_missing_the_letter_x_(solution_script):
	var got = solution_script.is_pangram("a quick movement of the enemy will jeopardize five gunboats")
	var want = false
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["a quick movement of the enemy will jeopardize five gunboats", got, want]]


func test_missing_the_letter_h_(solution_script):
	var got = solution_script.is_pangram("five boxing wizards jump quickly at it")
	var want = false
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["five boxing wizards jump quickly at it", got, want]]


func test_with_underscores(solution_script):
	var got = solution_script.is_pangram("the_quick_brown_fox_jumps_over_the_lazy_dog")
	var want = true
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["the_quick_brown_fox_jumps_over_the_lazy_dog", got, want]]


func test_with_numbers(solution_script):
	var got = solution_script.is_pangram("the 1 quick brown fox jumps over the 2 lazy dogs")
	var want = true
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["the 1 quick brown fox jumps over the 2 lazy dogs", got, want]]


func test_missing_letters_replaced_by_numbers(solution_script):
	var got = solution_script.is_pangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog")
	var want = false
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog", got, want]]


func test_mixed_case_and_punctuation(solution_script):
	var got = solution_script.is_pangram('"Five quacking Zephyrs jolt my wax bed."')
	var want = true
	return [got, want, "is_pangram(%s) = %s, expected %s" % ['"Five quacking Zephyrs jolt my wax bed."', got, want]]


func test_a_m_and_a_m_are_26_different_characters_but_not_a_pangram(solution_script):
	var got = solution_script.is_pangram("abcdefghijklm ABCDEFGHIJKLM")
	var want = false
	return [got, want, "is_pangram(%s) = %s, expected %s" % ["abcdefghijklm ABCDEFGHIJKLM", got, want]]
