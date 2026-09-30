func clean(number: String):
	number = number.replace("(", "").replace(")", "").replace("-", "").replace(".", "").replace(" ", "").replace("+", "")
	if len(number) == 11 and number.begins_with("1"):
		number = number.substr(1)
	if len(number) != 10 or not number.is_valid_int():
		return null
	if number[0] in "01" or number[3] in "01":
		return null
	return number
