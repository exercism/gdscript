func transform(legacy: Dictionary) -> Dictionary:
	var out: Dictionary[String, int] = {}
	for score in legacy.keys():
		for letter in legacy[score]:
			out[letter.to_lower()] = score
	return out
