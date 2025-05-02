func find_anagram(word, candidates):
	var result = []
	var base_list = word.to_lower().split()
	base_list.sort()
	
	for obj in candidates:
		if word.to_lower() == obj.to_lower():
			continue
		var char_list = obj.to_lower().split()
		char_list.sort()
		if char_list == base_list:
			result.append(obj)
	return result
