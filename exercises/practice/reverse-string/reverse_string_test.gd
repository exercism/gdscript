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


func test_wide_characters(solution_script):
	var want = "猫子"
	var got = solution_script.reverse("子猫")
	return [got, want]


func test_grapheme_cluster_with_pre_combined_form(solution_script):
	var want = "dnatsnehctsrüW"
	var got = solution_script.reverse("Würstchenstand")
	return [got, want]


func test_grapheme_clusters(solution_script):
	var want = "มรกแรปโนยขีเผู้"
	var got = solution_script.reverse("ผู้เขียนโปรแกรม")
	return [got, want]
