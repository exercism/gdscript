func acronym(phrase):
	var regex = RegEx.new()
	regex.compile("\\p{L}+'?\\p{L}*")
	var result = []
	for word in regex.search_all(phrase):
		result.append(word.get_string()[0].to_upper())
	return "".join(result)
