func test_orange_orange_black_and_red(solution_script):
	var colors   = ["orange", "orange", "black", "red"]
	var expected = "33 ohms ±2%"
	return [expected, solution_script.color_code(colors)]


func test_blue_grey_brown_and_violet(solution_script):
	var colors   = ["blue", "grey", "brown", "violet"]
	var expected = "680 ohms ±0.1%"
	return [expected, solution_script.color_code(colors)]


func test_red_black_red_and_green(solution_script):
	var colors   = ["red", "black", "red", "green"]
	var expected = "2 kiloohms ±0.5%"
	return [expected, solution_script.color_code(colors)]


func test_green_brown_orange_and_grey(solution_script):
	var colors   = ["green", "brown", "orange", "grey"]
	var expected = "51 kiloohms ±0.05%"
	return [expected, solution_script.color_code(colors)]


func test_one_black_band(solution_script):
	var colors   = ["black"]
	var expected = "0 ohms"
	return [expected, solution_script.color_code(colors)]


func test_orange_orange_yellow_black_and_brown(solution_script):
	var colors   = ["orange", "orange", "yellow", "black", "brown"]
	var expected = "334 ohms ±1%"
	return [expected, solution_script.color_code(colors)]


func test_red_green_yellow_yellow_and_brown(solution_script):
	var colors   = ["red", "green", "yellow", "yellow", "brown"]
	var expected = "2.54 megaohms ±1%"
	return [expected, solution_script.color_code(colors)]


func test_blue_grey_white_red_and_brown(solution_script):
	var colors   = ["black", "brown"]
	var expected = 1
	return [expected, solution_script.color_code(colors)]


func test_violet_orange_red_and_grey(solution_script):
	var colors   = ["black", "brown"]
	var expected = 1
	return [expected, solution_script.color_code(colors)]


func test_brown_red_orange_green_and_blue(solution_script):
	var colors   = ["brown", "red", "orange", "green", "blue"]
	var expected = "12.3 megaohms ±0.25%"
	return [expected, solution_script.color_code(colors)]

