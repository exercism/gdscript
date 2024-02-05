func find(search_list, value):
	var low = 0
	var high = len(search_list) - 1
	while low <= high:
		var middle = (low + high) / 2
		if search_list[middle] > value:
			high = middle - 1
		elif search_list[middle] < value:
			low = middle + 1
		else:
			return middle
	return false
