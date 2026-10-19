func solve(puzzle):
	# Parse the input
	var halves = puzzle.split(" == ")
	var left = halves[0]
	var right = halves[1]

	var parts = []
	for p in left.split("+"):
		parts.append(p.strip_edges())

	var words = parts + [right]
	var letters = ""
	for word in words:
		for letter in word:
			if letter not in letters:
				letters += letter

	# Collect the right-most letters for optimizations.
	var last_right = right[-1]
	var last_left = ""
	for part in parts:
		last_left += part[-1]

	# Collect the left-most letters for optimizations.
	var firsts = ""
	for word in words:
		if word[0] not in firsts:
			firsts += word[0]

	var n = len(letters)
	var digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

	# Recursion permutation using swaps.
	# The self-reference needs to be passed down for the function to call itself.
	var perm_test = func(f, l):
		# Loop through the first `n` digits, swapping values as we go through.
		if l < n:
			for r in range(l, 10):
				var c = digits[l]
				digits[l] = digits[r]
				digits[r] = c

				# If this digit gives a solution, return the solution.
				var got = f.call(f, l + 1)
				if got != null:
					return got

				c = digits[l]
				digits[l] = digits[r]
				digits[r] = c
		else:
			# Now that the first `n` digits are swapped, see if they give us a valid solution.
			# Use the first `n` digits to form a letter-to-digit map.
			var map = {}
			for i in range(n):
				map[letters[i]] = digits[i]

			# Abort if any word would start with a 0.
			for letter in firsts:
				if map[letter] == 0:
					return null

			# Abort if the last digits do not line up.
			var sum_last = 0
			for letter in last_left:
				sum_last += map[letter]
			if sum_last % 10 != map[last_right]:
				return null

			# Compute the left and right values then compare.
			var sum_right = 0
			for letter in right:
				sum_right = sum_right * 10 + map[letter]

			var sum_left = 0
			for word in parts:
				var word_sum = 0
				for letter in word:
					word_sum = word_sum * 10 + map[letter]
				sum_left += word_sum

			if sum_left == sum_right:
				return map

	return perm_test.call(perm_test, 0)
