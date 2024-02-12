func test_encode_yes(solution_script):
	return [solution_script.encode("yes"), "bvh"]


func test_encode_no(solution_script):
	return [solution_script.encode("no"), "ml"]


func test_encode_omg(solution_script):
	return [solution_script.encode("OMG"), "lnt"]


func test_encode_spaces(solution_script):
	return [solution_script.encode("O M G"), "lnt"]


func test_encode_mindblowingly(solution_script):
	return [solution_script.encode("mindblowingly"), "nrmwy oldrm tob"]


func test_encode_numbers(solution_script):
	return [solution_script.encode("Testing,1 2 3, testing."), "gvhgr mt123 gvhgr mt"]


func test_encode_deep_thought(solution_script):
	return [solution_script.encode("Truth is fiction."), "gifgs rhurx grlm"]


func test_encode_all_the_letters(solution_script):
	return [
		solution_script.encode("The quick brown fox jumps over the lazy dog."),
		"gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt",
	]


func test_decode_exercism(solution_script):
	return [solution_script.decode("vcvix rhn"), "exercism"]


func test_decode_a_sentence(solution_script):
	return [
		solution_script.decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v"),
		"anobstacleisoftenasteppingstone",
	]


func test_decode_numbers(solution_script):
	return [solution_script.decode("gvhgr mt123 gvhgr mt"), "testing123testing"]


func test_decode_all_the_letters(solution_script):
	return [
		solution_script.decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt"),
		"thequickbrownfoxjumpsoverthelazydog",
	]


func test_decode_with_too_many_spaces(solution_script):
	return [solution_script.decode("vc vix    r hn"), "exercism"]


func test_decode_with_no_spaces(solution_script):
	return [
		solution_script.decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv"), "anobstacleisoftenasteppingstone"
	]


