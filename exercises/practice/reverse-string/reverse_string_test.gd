func test_empty_originaling(solution_script):
	var original = ""
	var expected = ""
	return [solution_script.reverse(original), expected]


func test_a_word(solution_script):
	var original = "robot"
	var expected = "tobor"
	return [solution_script.reverse(original), expected]


func test_a_capitalized_word(solution_script):
	var original = "Ramen"
	var expected = "nemaR"
	return [solution_script.reverse(original), expected]


func test_a_sentence_with_punctuation(solution_script):
	var original = "I'm hungry!"
	var expected = "!yrgnuh m'I"
	return [solution_script.reverse(original), expected]


func test_a_palindrome(solution_script):
	var original = "racecar"
	var expected = "racecar"
	return [solution_script.reverse(original), expected]


func test_an_even_sized_word(solution_script):
	var original = "drawer"
	var expected = "reward"
	return [solution_script.reverse(original), expected]


func test_wide_characters(solution_script):
	var original = "子猫"
	var expected = "猫子"
	return [solution_script.reverse(original), expected]


func test_grapheme_cluster_with_pre_combined_form(solution_script):
	var original = "Würstchenstand"
	var expected = "dnatsnehctsrüW"
	return [solution_script.reverse(original), expected]


func test_grapheme_clusters(solution_script):
	var original = "ผู้เขียนโปรแกรม"
	var expected = "มรกแรปโนยขีเผู้"
	return [solution_script.reverse(original), expected]
