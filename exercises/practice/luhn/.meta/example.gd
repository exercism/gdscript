@export var card_num : String


func valid():
	var num = card_num.replace(" ", "")
	if len(num) <= 1:
		return false
	
	var checksum = 0
	for index in range(len(num)):
		var char = num[len(num) - 1 - index]
		if not char.is_valid_int():
			return false
		if index % 2 == 1:
			var digit = int(char)
			digit *= 2
			if digit > 9:
				digit -= 9
			checksum += digit
		else:
			checksum += int(char)
	return checksum % 10 == 0
