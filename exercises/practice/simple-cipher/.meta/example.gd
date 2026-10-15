const ORD_A = ord("a")

class Cipher:
	var key = ""

	func _init(key = null):
		if key == null:
			var letters = Array("qwertyuiopasdfghjklzxcvbnm".split(""))
			var pick = []
			for i in range(100):
				pick.append(letters.pick_random())
			key = "".join(pick)
		self.key = key
	
	func add(a: String, b: String, reverse: bool) -> String:
		var val = ord(a) - ORD_A
		var dist = ord(b) - ORD_A
		if reverse:
			dist *= -1
		var out = (val + dist)
		while out < 0:
			out += 26
		out = out % 26
		return char(out + ORD_A)

	func encode(plaintext, reverse = false):
		var out = []
		for i in range(len(plaintext)):
			out.append(self.add(plaintext[i], self.key[i % len(key)], reverse))
		return "".join(out)

	func decode(ciphertext):
		return self.encode(ciphertext, true)
