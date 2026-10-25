func nucleotide_counts(strand):
	var counts = {"A": 0, "C": 0, "G": 0, "T": 0}
	for char in strand:
		if char not in counts:
			return null
		counts[char] += 1
	return counts
