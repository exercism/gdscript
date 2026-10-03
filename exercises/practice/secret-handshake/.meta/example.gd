const data = ["wink", "double blink", "close your eyes", "jump"]

func commands(number: int):
	var out = []
	for i in range(len(data)):
		if number & (1 << i) != 0:
			out.append(data[i])
	if number & (1 << len(data)) != 0:
		out.reverse()
	return out
