func abbreviate(words):
	var out = ""
	var take = true
	for i in words:
		if i in "-_ ":
			take = true
		elif take:
			take = false
			out += i
	return out.to_upper()
