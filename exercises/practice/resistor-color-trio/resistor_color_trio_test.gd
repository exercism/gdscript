func test_orange_and_orange_and_black(solution_script):
	var colors = ["orange", "orange", "black"]
	var want = "33 ohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_blue_and_grey_and_brown(solution_script):
	var colors = ["blue", "grey", "brown"]
	var want = "680 ohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_red_and_black_and_red(solution_script):
	var colors = ["red", "black", "red"]
	var want = "2 kiloohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_green_and_brown_and_orange(solution_script):
	var colors = ["green", "brown", "orange"]
	var want = "51 kiloohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_yellow_and_violet_and_yellow(solution_script):
	var colors = ["yellow", "violet", "yellow"]
	var want = "470 kiloohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_blue_and_violet_and_blue(solution_script):
	var colors = ["blue", "violet", "blue"]
	var want = "67 megaohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_minimum_possible_value(solution_script):
	var colors = ["black", "black", "black"]
	var want = "0 ohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_maximum_possible_value(solution_script):
	var colors = ["white", "white", "white"]
	var want = "99 gigaohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_first_two_colors_make_an_invalid_octal_number(solution_script):
	var colors = ["black", "grey", "black"]
	var want = "8 ohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]


func test_ignore_extra_colors(solution_script):
	var colors = ["blue", "green", "yellow", "orange"]
	var want = "650 kiloohms"
	var got = solution_script.label(colors)
	return [got, want, "label(%s) = %s, expected %s" % [colors, got, want]]
