func reverse(original):
	var regex = RegEx.new()
	regex.compile("\\X")
	var clusters = regex.search_all(original).map(func(m): return m.get_string())
	clusters.reverse()
	return "".join(clusters)
