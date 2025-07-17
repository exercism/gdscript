extends SceneTree

# godot --headless -s bin/verify-exercises.gd

func _init():
	# Calling `quit(1)` doesn't stop the program immediately, so a `return` is necessary.
	# That's why errors are checked directly in `_init()`, instead of calling `quit(1)`
	# in each method.
	var temp_dir_base = DirAccess.create_temp("gdscript-verify-exercises")
	if temp_dir_base == null:
		push_error("Failed to create base temporary directory: %s", DirAccess.get_open_error())
		quit(1)
		return
	var temp_dir_base_path = temp_dir_base.get_current_dir()

	for exercise_base in [
		"exercises/practice",
		"exercises/concept"
	]:
		if run_tests(exercise_base, temp_dir_base_path) != OK:
			quit(1)
			return
	quit()

func run_tests(exercise_base: String, temp_dir_base_path: String) -> Error:
	for slug in DirAccess.get_directories_at(exercise_base):
		var result = run_test(slug, exercise_base + "/" + slug, temp_dir_base_path)
		if result != OK:
			return result
	return OK


func run_test(slug: String, exercise_dir: String, temp_dir_base_path: String) -> Error:
	var temp_dir: String = temp_dir_base_path + "/" + slug
	DirAccess.make_dir_recursive_absolute(temp_dir)

	var config_path = exercise_dir + "/.meta/config.json"
	var config_file = FileAccess.open(config_path, FileAccess.READ)
	if not config_file:
		push_error("Failed to read config: " + config_path)
		return DirAccess.get_open_error()

	var json = JSON.new()
	var parse_return_value = json.parse(config_file.get_as_text())
	var config
	if parse_return_value == OK:
		config = json.data
		if typeof(config) != TYPE_DICTIONARY:
			push_error("Expected TYPE_DICTIONARY for JSON in: " + config_path)
			return ERR_UNCONFIGURED
	else:
		push_error("JSON Parse Error: ", json.get_error_message(), " in ", config_path, " at line ", json.get_error_line())
		return parse_return_value

	var solution_name: String = config.get("files", {}).get("solution", [])[0]
	var test_path = exercise_dir + "/" + config.get("files", {}).get("test", [])[0]
	var example_path = exercise_dir + "/" + config.get("files", {}).get("example", [])[0]
	var dest_solution = temp_dir + "/" + solution_name

	# Copy test and example files into temp dir
	DirAccess.copy_absolute(test_path, temp_dir + "/" + test_path.get_file())
	DirAccess.copy_absolute(example_path, dest_solution)

	# Run external test script
	var args = [slug, temp_dir, temp_dir]
	var output = []
	var exit_code = OS.execute("/opt/exercism/gdscript/test-runner/bin/run.sh", args, output, true)
	if exit_code != 0:
		push_error("Test runner failed for ", slug, " with ", output)
		return ERR_SCRIPT_FAILED
	print(output[0])

	# Check test result
	var results_path = temp_dir + "/results.json"
	if not FileAccess.file_exists(results_path):
		push_error("Missing results.json for ", slug, " at ", results_path)
		return ERR_FILE_NOT_FOUND
	var results_file = FileAccess.open(results_path, FileAccess.READ)
	parse_return_value = json.parse(results_file.get_as_text())
	var results
	if parse_return_value == OK:
		results = json.data
		if results.get("status") != "pass":
			push_error("Tests for ", slug, " have failed:")
			push_error(JSON.stringify(results, "\t"))
			return FAILED
	else:
		push_error("JSON Parse Error: ", json.get_error_message(), " in ", config_path, " at line ", json.get_error_line())
		return parse_return_value
	return OK
