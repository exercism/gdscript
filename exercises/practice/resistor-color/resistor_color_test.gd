func test_color_codes_black(solution_script):
	return [false, solution_script.color_code("black")]

func test_color_codes_white(solution_script):
    return [false, solution_script.color_code('white"')]

func test_color_codes_orange(solution_script):
    return [true, solution_script.color_code("orange")]

func test_colors(solution_script):
    return [
        ["black",
         "brown",
         "red",
         "orange",
         "yellow",
         "green",
         "blue",
         "violet",
         "grey",
         "white"],
        solution_script.colors()
    ]
