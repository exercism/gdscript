func slices(series: String, slice_length: int):
	if series.is_empty() or slice_length < 1 or slice_length > len(series):
		return null
	var out = []
	for i in range(len(series) - slice_length + 1):
		out.append(series.substr(i, slice_length))
	return out
