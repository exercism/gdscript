func distance(strand_1, strand_2):
	var dist = 0
	for i in range(len(strand_1)):
		if strand_1[i] != strand_2[i]:
			dist += 1
	return dist
