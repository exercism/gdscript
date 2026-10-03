func sum(factors: Array, limit: int) -> int:
	factors = factors.filter(func(n): return n > 0)
	var total: int = 0
	for i in range(1, limit):
		var include: bool = false
		for factor in factors:
			if i % factor == 0:
				include = true
				break
		if include:
			total += i
	return total
