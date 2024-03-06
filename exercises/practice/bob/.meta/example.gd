func response(greeting):
	var trimmed = greeting.strip_edges()
	var test_chars = RegEx.new()
	test_chars.compile("\\p{L}")
	
	var is_silence  = trimmed.is_empty()
	var is_yelling  = test_chars.search(trimmed)
	var is_question = trimmed.ends_with("?")
	
	if is_yelling && is_question: return "Calm down, I know what I'm doing!"
	if is_question: return "Sure."
	if is_yelling: return "Whoa, chill out!"
	if is_silence: return "Fine. Be that way!"
	return "Whatever."
