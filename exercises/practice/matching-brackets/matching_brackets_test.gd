func test_paired_square_brackets(solution_script):
	var inputs = "[]"
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_empty_string(solution_script):
	var inputs = ""
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_unpaired_brackets(solution_script):
	var inputs = "[["
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_wrong_ordered_brackets(solution_script):
	var inputs = "}{"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_wrong_closing_bracket(solution_script):
	var inputs = "{]"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_paired_with_whitespace(solution_script):
	var inputs = "{ }"
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_partially_paired_brackets(solution_script):
	var inputs = "{[])"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_simple_nested_brackets(solution_script):
	var inputs = "{[]}"
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_several_paired_brackets(solution_script):
	var inputs = "{}[]"
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_paired_and_nested_brackets(solution_script):
	var inputs = "([{}({}[])])"
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_unopened_closing_brackets(solution_script):
	var inputs = "{[)][]}"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_unpaired_and_nested_brackets(solution_script):
	var inputs = "([{])"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_paired_and_wrong_nested_brackets(solution_script):
	var inputs = "[({]})"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_paired_and_wrong_nested_brackets_but_innermost_are_correct(solution_script):
	var inputs = "[({}])"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_paired_and_incomplete_brackets(solution_script):
	var inputs = "{}["
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_too_many_closing_brackets(solution_script):
	var inputs = "[]]"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_early_unexpected_brackets(solution_script):
	var inputs = ")()"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_early_mismatched_brackets(solution_script):
	var inputs = "{)()"
	var want = false
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_math_expression(solution_script):
	var inputs = "(((185 + 223.85) * 15) - 543)/2"
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]


func test_complex_latex_expression(solution_script):
	var inputs = "\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)"
	var want = true
	var got = solution_script.is_paired(inputs)
	return [got, want, "is_paired(%s) = %s, expected %s" % [inputs, got, want]]
