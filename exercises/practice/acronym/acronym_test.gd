func test_basic(solution_script):
	var value    = "Portable Networks Graphic"
	var expected = "PNG"
	return [solution_script.acronym(value), expected]


func test_lowercase_words(solution_script):
	var value    = "Ruby on Rails"
	var expected = "ROR"
	return [solution_script.acronym(value), expected]


func test_punctuation(solution_script):
	var value    = "First in, First out"
	var expected = "FIFO"
	return [solution_script.acronym(value), expected]


func test_all_caps_word(solution_script):
	var value    = "GNU Image Manipulation Program"
	var expected = "GIMP"
	return [solution_script.acronym(value), expected]


func test_punctuation_without_whitespace(solution_script):
	var value    = "Complementary Metal-Oxide semiconductor"
	var expected = "CMOS"
	return [solution_script.acronym(value), expected]


func test_very_long_abbreviation(solution_script):
	var value    = "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
	var expected = "ROTFLSHTMDCOALM"
	return [solution_script.acronym(value), expected]


func test_consecutive_delimiters(solution_script):
	var value    = "Something - I made up from thin air"
	var expected = "SIMUFTA"
	return [solution_script.acronym(value), expected]


func test_apostrophes(solution_script):
	var value    = "Halley's Comet"
	var expected = "HC"
	return [solution_script.acronym(value), expected]


func test_underscore_emphasis(solution_script):
	var value    = "The Road _Not_ Taken"
	var expected = "TRNT"
	return [solution_script.acronym(value), expected]


