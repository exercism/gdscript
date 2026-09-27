func is_paired(data: String) -> bool:
	var stack = []
	for char in data:
		if char in "[({":
			stack.append(char)
		if char in "])}":
			if not stack or stack.pop_back() != {"]": "[", ")": "(", "}": "{"}[char]:
				return false
	return not stack
