func add(list):
	var out = 0
	for i in list:
		out += i
	return out


func combinations(sum, size, exclude):
	var candidates = []
	for i in range(1, min(sum, 9) + 1):
		if i not in exclude:
			candidates.append(i)
	var num_candidates = len(candidates)

	var combinations = func(me, idx, count):
		if idx == num_candidates or count == 0:
			return [[]]
		var out = []
		if idx + count < num_candidates:
			out = me.call(me, idx + 1, count)
		for i in me.call(me, idx + 1, count - 1):
			out.append([candidates[idx]] + i)
		return out

	var out = []
	for i in combinations.call(combinations, 0, size):
		if add(i) == sum:
			out.append(i)
	return out
