func test_black(solution_script):
	var want = 0
	var got = solution_script.color_code("black")
	return [got, want, "color_code(%s) = %s, expected %s" % ["black", got, want]]

func test_white(solution_script):
	var want = 9
	var got = solution_script.color_code("white")
	return [got, want, "color_code(%s) = %s, expected %s" % ["white", got, want]]

func test_orange(solution_script):
	var want = 3
	var got = solution_script.color_code("orange")
	return [got, want, "color_code(%s) = %s, expected %s" % ["orange", got, want]]

func test_colors(solution_script):
	var want = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
	var got = solution_script.colors()
	return [got, want, "colors() = %s, expected %s" % [got, want]]
