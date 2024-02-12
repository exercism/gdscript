func no_name_given(solution_script):
	return [solution_script.two_fer(), "One for you, one for me."]

func a_name_given(solution_script):
	return [solution_script.two_fer("Alice"), "One for Alice, one for me."]

func another_name_given(solution_script):
	return [solution_script.two_fer("Bob"), "One for Bob, one for me."]
