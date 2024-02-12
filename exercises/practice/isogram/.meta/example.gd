func is_isogram(string: String):
	string = string.to_lower().replace("-", "").replace(" ", "")
	var letters = {}
	
	for c in string:
		letters[c] = true
	
	return letters.size() == string.length()
