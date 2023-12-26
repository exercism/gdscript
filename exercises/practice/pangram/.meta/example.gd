var lowercase = "abcdefghijklmnopqrstuvwxyz".to_utf8_buffer()


func is_pangram(sentence):
	var bytes = sentence.to_lower().to_utf8_buffer()
	var seen = {}
	for byte in bytes:
		if byte >= 97 and byte <= 122:
			seen[byte] = null
	return seen.has_all(lowercase)
