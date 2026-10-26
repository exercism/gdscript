func prime(n):
	if n < 1:
		return null
	var primes = [2, 3]
	var candidate = 3
	while len(primes) < n:
		var found = false
		while not found:
			found = true
			candidate += 2
			for p in primes:
				if candidate % p == 0:
					found = false
					break
		primes.append(candidate)
	return primes[n - 1]
