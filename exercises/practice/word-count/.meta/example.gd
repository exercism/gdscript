const REMOVE = "!@#$%^&*():.'"


func count_words(sentence):
	sentence = (
		sentence
		. replace(",", " ")
		. replace("_", " ")
		. replace("\n", " ")
		. replace("\t", " ")
		. to_lower()
	)
	var count = {}
	for word in sentence.split(" "):
		word = word.lstrip(REMOVE).rstrip(REMOVE)
		if word.is_empty():
			continue
		if word not in count:
			count[word] = 0
		count[word] += 1
	return count
