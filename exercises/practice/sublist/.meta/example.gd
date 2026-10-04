func sublist(list_one: Array, list_two: Array) -> String:
	if list_one == list_two:
		return "equal"

	var r = "sublist"
	if len(list_one) > len(list_two):
		var t = list_one
		list_one = list_two
		list_two = t
		r = "superlist"

	for i in range(len(list_two) - len(list_one) + 1):
		if list_one == list_two.slice(i, i + len(list_one)):
			return r

	return "unequal"

