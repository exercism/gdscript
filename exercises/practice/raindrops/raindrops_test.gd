func test_the_sound_for_1_is_1(solution_script):
	var got = solution_script.convert(1)
	var want = "1"
	return [got, want]


func test_the_sound_for_3_is_pling(solution_script):
	var got = solution_script.convert(3)
	var want = "Pling"
	return [got, want]


func test_the_sound_for_5_is_plang(solution_script):
	var got = solution_script.convert(5)
	var want = "Plang"
	return [got, want]


func test_the_sound_for_7_is_plong(solution_script):
	var got = solution_script.convert(7)
	var want = "Plong"
	return [got, want]


func test_the_sound_for_6_is_pling_as_it_has_a_factor_3(solution_script):
	var got = solution_script.convert(6)
	var want = "Pling"
	return [got, want]


func test_2_to_the_power_3_does_not_make_a_raindrop_sound_as_3_is_the_exponent_not_the_base(solution_script):
	var got = solution_script.convert(8)
	var want = "8"
	return [got, want]


func test_the_sound_for_9_is_pling_as_it_has_a_factor_3(solution_script):
	var got = solution_script.convert(9)
	var want = "Pling"
	return [got, want]


func test_the_sound_for_10_is_plang_as_it_has_a_factor_5(solution_script):
	var got = solution_script.convert(10)
	var want = "Plang"
	return [got, want]


func test_the_sound_for_14_is_plong_as_it_has_a_factor_of_7(solution_script):
	var got = solution_script.convert(14)
	var want = "Plong"
	return [got, want]


func test_the_sound_for_15_is_plingplang_as_it_has_factors_3_and_5(solution_script):
	var got = solution_script.convert(15)
	var want = "PlingPlang"
	return [got, want]


func test_the_sound_for_21_is_plingplong_as_it_has_factors_3_and_7(solution_script):
	var got = solution_script.convert(21)
	var want = "PlingPlong"
	return [got, want]


func test_the_sound_for_25_is_plang_as_it_has_a_factor_5(solution_script):
	var got = solution_script.convert(25)
	var want = "Plang"
	return [got, want]


func test_the_sound_for_27_is_pling_as_it_has_a_factor_3(solution_script):
	var got = solution_script.convert(27)
	var want = "Pling"
	return [got, want]


func test_the_sound_for_35_is_plangplong_as_it_has_factors_5_and_7(solution_script):
	var got = solution_script.convert(35)
	var want = "PlangPlong"
	return [got, want]


func test_the_sound_for_49_is_plong_as_it_has_a_factor_7(solution_script):
	var got = solution_script.convert(49)
	var want = "Plong"
	return [got, want]


func test_the_sound_for_52_is_52(solution_script):
	var got = solution_script.convert(52)
	var want = "52"
	return [got, want]


func test_the_sound_for_105_is_plingplangplong_as_it_has_factors_3_5_and_7(solution_script):
	var got = solution_script.convert(105)
	var want = "PlingPlangPlong"
	return [got, want]


func test_the_sound_for_3125_is_plang_as_it_has_a_factor_5(solution_script):
	var got = solution_script.convert(3125)
	var want = "Plang"
	return [got, want]
