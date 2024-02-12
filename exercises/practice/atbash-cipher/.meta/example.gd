const BLOCK_SIZE = 5


func to_int(char):
	return char.unicode_at(0)


func translate(str):
	var result = ""
	
	for char in str.to_lower():
		if char.is_valid_int():
			result += char
		elif char.is_valid_identifier() and not char == "_":
			var new_char = String.chr(to_int("z") + to_int("a") - to_int(char))
			result += new_char
	
	return result


func encode(plain_text):
	var ciphered_text = translate(plain_text)
	var chunks = []
	
	for i in range(0, len(ciphered_text), BLOCK_SIZE):
		chunks.append(ciphered_text.substr(i, BLOCK_SIZE))
	
	return " ".join(chunks)


func decode(ciphered_text):
	return translate(ciphered_text)
