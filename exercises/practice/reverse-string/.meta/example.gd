func reverse(str):
	var result = ""
	for i in range(str.length() - 1, -1, -1):
		result += str[i]
	return result
