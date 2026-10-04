# Bit indicating there are more chunks to this number.
const MORE = 0b10000000
# Mask used to access the number part of this chunk.
const MASK = 0b01111111


func encode(numbers: Array) -> Array:
	"""Encode numbers."""
	var results = []
	for number in numbers:
		var encoded: Array = []
		while number > 0:
			# Set the MORE bit on all chunks.
			encoded.append(MORE | (number & MASK))
			number >>= 7
		if not encoded:
			encoded.append(0)
		# Unset MORE on the last chunk.
		encoded[0] &= MASK
		encoded.reverse()
		for i in encoded:
			results.append(i)
	return results


func decode(encoded: Array):
	"""Decode numbers."""
	if encoded[-1] & MORE:
		return null

	var decoded: Array = []
	var num = 0
	for chunk in encoded:
		num = (num << 7) | (chunk & MASK)
		if not chunk & MORE:
			decoded.append(num)
			num = 0
	return decoded

