func primes(limit: int) -> Array:
	limit += 1
	var sieve = []
	for i in range(limit):
		sieve.append(true)
	for i in range(2, limit):
		if sieve[i]:
			for j in range(2 * i, limit, i):
				sieve[j] = false
	var out: Array = []
	for i in range(2, limit):
		if sieve[i]:
			out.append(i)
	return out
