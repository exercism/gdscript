func test_the_sound_for_1_is_1(solution_script):
	return [solution_script.convert(1), "1"]


func test_the_sound_for_3_is_pling(solution_script):
	return [solution_script.convert(3), "Pling"]


func test_the_sound_for_5_is_plang(solution_script):
	return [solution_script.convert(5), "Plang"]


func test_the_sound_for_7_is_plong(solution_script):
	return [solution_script.convert(7), "Plong"]


func test_the_sound_for_6_is_pling_as_it_has_a_factor_3(solution_script):
	return [solution_script.convert(6), "Pling"]


func test_2_to_the_power_3_does_not_make_a_raindrop_sound_as_3_is_the_exponent_not_the_base(solution_script):
	return [solution_script.convert(8), "8"]


func test_the_sound_for_9_is_pling_as_it_has_a_factor_3(solution_script):
	return [solution_script.convert(9), "Pling"]


func test_the_sound_for_10_is_plang_as_it_has_a_factor_5(solution_script):
	return [solution_script.convert(10), "Plang"]


func test_the_sound_for_14_is_plong_as_it_has_a_factor_of_7(solution_script):
	return [solution_script.convert(14), "Plong"]


func test_the_sound_for_15_is_pling_plang_as_it_has_factors_3_and_5(solution_script):
	return [solution_script.convert(15), "PlingPlang"]


func test_the_sound_for_21_is_pling_plong_as_it_has_factors_3_and_7(solution_script):
	return [solution_script.convert(21), "PlingPlong"]


func test_the_sound_for_25_is_plang_as_it_has_a_factor_5(solution_script):
	return [solution_script.convert(25), "Plang"]


func test_the_sound_for_27_is_pling_as_it_has_a_factor_3(solution_script):
	return [solution_script.convert(27), "Pling"]


func test_the_sound_for_35_is_plang_plong_as_it_has_factors_5_and_7(solution_script):
	return [solution_script.convert(35), "PlangPlong"]


func test_the_sound_for_49_is_plong_as_it_has_a_factor_7(solution_script):
	return [solution_script.convert(49), "Plong"]


func test_the_sound_for_52_is_52(solution_script):
	return [solution_script.convert(52), "52"]


func test_the_sound_for_105_is_pling_plang_plong_as_it_has_factors_3_5_and_7(solution_script):
	return [solution_script.convert(105), "PlingPlangPlong"]


func test_the_sound_for_3125_is_plang_as_it_has_a_factor_5(solution_script):
	return [solution_script.convert(3125), "Plang"]
