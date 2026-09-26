func response(message: String) -> String:
	message = message.strip_edges()
	if message == "":
		return "Fine. Be that way!"
	if message.ends_with("?"):
		if message.to_upper() == message and message.to_upper() != message.to_lower():
			return "Calm down, I know what I'm doing!"
		return "Sure."
	if message.to_upper() == message.to_lower():
		return "Whatever."
	if message.to_upper() == message:
		return "Whoa, chill out!"
	return "Whatever."
