func distance(strand1: String, strand2: String) -> int:
	if len(strand1) != len(strand2):
		return ERR_INVALID_PARAMETER
	var out := 0
	for i in range(len(strand1)):
		if strand1[i] != strand2[i]:
			out += 1
	return out

