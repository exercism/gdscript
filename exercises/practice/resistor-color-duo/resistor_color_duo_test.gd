func test_brown_and_black(solution_script):
	var colors = ["brown", "black"]
	var expected = 10
	var got = solution_script.value(colors)
	return [got, expected, "value(%s) = %s, expected %s" % [colors, got, want]]


func test_blue_and_grey(solution_script):
	var colors = ["blue", "grey"]
	var expected = 68
	var got = solution_script.value(colors)
	return [got, expected, "value(%s) = %s, expected %s" % [colors, got, want]]


func test_yellow_and_violet(solution_script):
	var colors = ["yellow", "violet"]
	var expected = 47
	var got = solution_script.value(colors)
	return [got, expected, "value(%s) = %s, expected %s" % [colors, got, want]]


func test_white_and_red(solution_script):
	var colors = ["white", "red"]
	var expected = 92
	var got = solution_script.value(colors)
	return [got, expected, "value(%s) = %s, expected %s" % [colors, got, want]]


func test_orange_and_orange(solution_script):
	var colors = ["orange", "orange"]
	var expected = 33
	var got = solution_script.value(colors)
	return [got, expected, "value(%s) = %s, expected %s" % [colors, got, want]]


func test_ignore_additional_colors(solution_script):
	var colors = ["green", "brown", "orange"]
	var expected = 51
	var got = solution_script.value(colors)
	return [got, expected, "value(%s) = %s, expected %s" % [colors, got, want]]


func test_black_and_brown_one_digit(solution_script):
	var colors = ["black", "brown"]
	var expected = 1
	var got = solution_script.value(colors)
	return [got, expected, "value(%s) = %s, expected %s" % [colors, got, want]]
