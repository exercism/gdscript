func reverse(original):
	var regex = RegEx.create_from_string("\\X")
	var clusters = regex.search_all(original).map(func(m): return m.get_string())
	clusters.reverse()
	return "".join(clusters)
