func test_random_key_cipher_can_encode(solution_script):
	var cipher = solution_script.Cipher.new()
	var plaintext = "aaaaaaaaaa"
	var got = cipher.encode(plaintext)
	var want = cipher.key.substr(0, len(plaintext))
	return [got, want, "cipher.encode(%s) = %s, expected to match the key prefix, %s" % [plaintext, got, want]]


func test_random_key_cipher_can_decode(solution_script):
	var cipher = solution_script.Cipher.new()
	var want = "aaaaaaaaaa"
	var key = cipher.key.substr(0, len(want))
	var got = cipher.decode(key)
	return [got, want, "decoding with key prefix, %s: cipher.decode(%s) = %s, expected %s" % [key, key, got, want]]


func test_key_is_made_only_of_lowercase_letters(solution_script):
	var cipher = solution_script.Cipher.new()
	var is_lowercase = true
	var letters = "abcdefghijklmnopqrstuvwxyz"
	for char in cipher.key:
		if char not in letters:
			is_lowercase = false
	return [is_lowercase, true, "expected key to only contain lowercase letters, got %s" % cipher.key]


func test_can_encode(solution_script):
	var got = solution_script.Cipher.new("abcdefghij").encode("aaaaaaaaaa")
	var want = "abcdefghij"
	return [got, want, "with key %s, cipher.encode(%s) = %s, expected %s" % ["abcdefghij", "aaaaaaaaaa", got, want]]


func test_can_decode(solution_script):
	var got = solution_script.Cipher.new("abcdefghij").decode("abcdefghij")
	var want = "aaaaaaaaaa"
	return [got, want, "with key %s, cipher.decode(%s) = %s, expected %s" % ["abcdefghij", "abcdefghij", got, want]]


func test_can_double_shift_encode(solution_script):
	var got = solution_script.Cipher.new("iamapandabear").encode("iamapandabear")
	var want = "qayaeaagaciai"
	return [got, want, "with key %s, cipher.encode(%s) = %s, expected %s" % ["iamapandabear", "iamapandabear", got, want]]


func test_can_wrap_on_encode(solution_script):
	var got = solution_script.Cipher.new("abcdefghij").encode("zzzzzzzzzz")
	var want = "zabcdefghi"
	return [got, want, "with key %s, cipher.encode(%s) = %s, expected %s" % ["abcdefghij", "zzzzzzzzzz", got, want]]


func test_can_wrap_on_decode(solution_script):
	var got = solution_script.Cipher.new("abcdefghij").decode("zabcdefghi")
	var want = "zzzzzzzzzz"
	return [got, want, "with key %s, cipher.decode(%s) = %s, expected %s" % ["abcdefghij", "zabcdefghi", got, want]]


func test_can_encode_messages_longer_than_the_key(solution_script):
	var got = solution_script.Cipher.new("abc").encode("iamapandabear")
	var want = "iboaqcnecbfcr"
	return [got, want, "with key %s, cipher.encode(%s) = %s, expected %s" % ["abc", "iamapandabear", got, want]]


func test_can_decode_messages_longer_than_the_key(solution_script):
	var got = solution_script.Cipher.new("abc").decode("iboaqcnecbfcr")
	var want = "iamapandabear"
	return [got, want, "with key %s, cipher.decode(%s) = %s, expected %s" % ["abc", "iboaqcnecbfcr", got, want]]
