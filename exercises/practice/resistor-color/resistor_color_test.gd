func test_color_codes_black(solution_script):
	return [0, solution_script.color_code("black")]


func test_color_codes_white(solution_script):
	return [9, solution_script.color_code("white")]


func test_color_codes_orange(solution_script):
	return [3, solution_script.color_code("orange")]


func test_colors(solution_script):
	var colors = [
		"black",
		"brown",
		"red",
		"orange",
		"yellow",
		"green",
		"blue",
		"violet",
		"grey",
		"white"
	]
	return [colors, solution_script.colors()]
