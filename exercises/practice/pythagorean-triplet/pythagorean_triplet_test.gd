func test_triplets_whose_sum_is_12(solution_script):
	var want = [[3, 4, 5]]
	var got = solution_script.triplets_with_sum(12)
	return [got, want, "triplets_with_sum(%s) = %s, expected %s" % [12, got, want]]


func test_triplets_whose_sum_is_108(solution_script):
	var want = [[27, 36, 45]]
	var got = solution_script.triplets_with_sum(108)
	return [got, want, "triplets_with_sum(%s) = %s, expected %s" % [108, got, want]]


func test_triplets_whose_sum_is_1000(solution_script):
	var want = [[200, 375, 425]]
	var got = solution_script.triplets_with_sum(1000)
	return [got, want, "triplets_with_sum(%s) = %s, expected %s" % [1000, got, want]]


func test_no_matching_triplets_for_1001(solution_script):
	var want = []
	var got = solution_script.triplets_with_sum(1001)
	return [got, want, "triplets_with_sum(%s) = %s, expected %s" % [1001, got, want]]


func test_returns_all_matching_triplets(solution_script):
	var want = [[9, 40, 41], [15, 36, 39]]
	var got = solution_script.triplets_with_sum(90)
	return [got, want, "triplets_with_sum(%s) = %s, expected %s" % [90, got, want]]


func test_several_matching_triplets(solution_script):
	var want = [[40, 399, 401], [56, 390, 394], [105, 360, 375], [120, 350, 370], [140, 336, 364], [168, 315, 357], [210, 280, 350], [240, 252, 348]]
	var got = solution_script.triplets_with_sum(840)
	return [got, want, "triplets_with_sum(%s) = %s, expected %s" % [840, got, want]]
