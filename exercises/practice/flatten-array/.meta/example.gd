func flatten(iterable):
	var flatted = []
	for item in iterable:
		if is_instance_of(item, TYPE_ARRAY):
			flatted.append_array(flatten(item))
		elif item != null:
			flatted.append(item)
	return flatted
