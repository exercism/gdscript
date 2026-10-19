class SaveTheCow:
	var _word = ""
	var state = "Ongoing"
	var remaining_failures = 9
	var masked_word = ""
	var error = null

	func _init(word):
		self._word = word
		for i in range(len(self._word)):
			masked_word += "_"
	
	func guess(letter):
		if self.state == "Win":
			self.error = "cannot guess after the game is won"
			return
		if self.state == "Lose":
			self.error = "cannot guess after the game is lost"
			return
		if letter not in self._word or letter in self.masked_word:
			if self.remaining_failures == 0:
				self.state = "Lose"
			else:
				self.remaining_failures -= 1
		else:
			var next = ""
			for i in range(len(self._word)):
				if self.masked_word[i] != "_":
					next += self.masked_word[i]
				elif self._word[i] == letter:
					next += letter
				else:
					next += "_"
			if "_" not in next:
				self.state = "Win"
			self.masked_word = next
