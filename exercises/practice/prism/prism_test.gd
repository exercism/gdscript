func test_downward_refraction_two_hits(solution_script):
	var position = Vector2(0, 0)
	var angle = 0
	var prisms =  [
		[1, Vector2(10, 0), -90],
		[2, Vector2(10, -10), 0],
	]

	var want = [1, 2]
	var got = solution_script.find_sequence(position, angle, prisms)
	return [got, want]
