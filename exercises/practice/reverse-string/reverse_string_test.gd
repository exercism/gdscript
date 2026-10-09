func test_an_empty_string(solution_script):
	var want = ""
	var got = solution_script.reverse("")
	return [got, want]


func test_a_word(solution_script):
	var want = "tobor"
	var got = solution_script.reverse("robot")
	return [got, want]


func test_a_capitalized_word(solution_script):
	var want = "nemaR"
	var got = solution_script.reverse("Ramen")
	return [got, want]


func test_a_sentence_with_punctuation(solution_script):
	var want = "!yrgnuh m'I"
	var got = solution_script.reverse("I'm hungry!")
	return [got, want]


func test_a_palindrome(solution_script):
	var want = "racecar"
	var got = solution_script.reverse("racecar")
	return [got, want]


func test_an_even_sized_word(solution_script):
	var want = "reward"
	var got = solution_script.reverse("drawer")
	return [got, want]
