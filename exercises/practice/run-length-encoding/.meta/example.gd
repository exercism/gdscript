func decode(string):
	var out = ""
	var regex = RegEx.create_from_string("([0-9]*)([^0-9])")
	for found in regex.search_all(string):
		var count = 1
		if not found.get_string(1).is_empty():
			count = int(found.get_string(1))
		for i in range(count):
			out += found.get_string(2)
	return out


func encode(string):
	var out = ""
	var count = 0
	var one = string.split()
	var two = string.split()
	one.insert(0, "")
	two.append("")
	for i in range(len(one)):
		var a = one[i]
		var b = two[i]
		if a == b:
			count += 1
		elif count > 1:
			out += "%d%s" % [count, a]
			count = 1
		else:
			out += a
			count = 1
	return out
