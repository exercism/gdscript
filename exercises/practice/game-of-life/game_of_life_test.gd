func test_empty_matrix(solution_script):
	var initial = [
	]
	var want = [
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]


func test_live_cells_with_zero_live_neighbors_die(solution_script):
	var initial = [
		[0, 0, 0],
		[0, 1, 0],
		[0, 0, 0],
	]
	var want = [
		[0, 0, 0],
		[0, 0, 0],
		[0, 0, 0],
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]


func test_live_cells_with_only_one_live_neighbor_die(solution_script):
	var initial = [
		[0, 0, 0],
		[0, 1, 0],
		[0, 1, 0],
	]
	var want = [
		[0, 0, 0],
		[0, 0, 0],
		[0, 0, 0],
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]


func test_live_cells_with_two_live_neighbors_stay_alive(solution_script):
	var initial = [
		[1, 0, 1],
		[1, 0, 1],
		[1, 0, 1],
	]
	var want = [
		[0, 0, 0],
		[1, 0, 1],
		[0, 0, 0],
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]


func test_live_cells_with_three_live_neighbors_stay_alive(solution_script):
	var initial = [
		[0, 1, 0],
		[1, 0, 0],
		[1, 1, 0],
	]
	var want = [
		[0, 0, 0],
		[1, 0, 0],
		[1, 1, 0],
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]


func test_dead_cells_with_three_live_neighbors_become_alive(solution_script):
	var initial = [
		[1, 1, 0],
		[0, 0, 0],
		[1, 0, 0],
	]
	var want = [
		[0, 0, 0],
		[1, 1, 0],
		[0, 0, 0],
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]


func test_live_cells_with_four_or_more_neighbors_die(solution_script):
	var initial = [
		[1, 1, 1],
		[1, 1, 1],
		[1, 1, 1],
	]
	var want = [
		[1, 0, 1],
		[0, 0, 0],
		[1, 0, 1],
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]


func test_bigger_matrix(solution_script):
	var initial = [
		[1, 1, 0, 1, 1, 0, 0, 0],
		[1, 0, 1, 1, 0, 0, 0, 0],
		[1, 1, 1, 0, 0, 1, 1, 1],
		[0, 0, 0, 0, 0, 1, 1, 0],
		[1, 0, 0, 0, 1, 1, 0, 0],
		[1, 1, 0, 0, 0, 1, 1, 1],
		[0, 0, 1, 0, 1, 0, 0, 1],
		[1, 0, 0, 0, 0, 0, 1, 1],
	]
	var want = [
		[1, 1, 0, 1, 1, 0, 0, 0],
		[0, 0, 0, 0, 0, 1, 1, 0],
		[1, 0, 1, 1, 1, 1, 0, 1],
		[1, 0, 0, 0, 0, 0, 0, 1],
		[1, 1, 0, 0, 1, 0, 0, 1],
		[1, 1, 0, 1, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0, 1, 1],
	]
	var got = solution_script.tick(initial)
	return [got, want, "tick(%s) = %s, expected %s" % [initial, got, want]]
