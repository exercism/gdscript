const DATA = ["wink", "double blink", "close your eyes", "jump"]


func commands(number: int):
	var out = []
	for i in range(len(DATA)):
		if number & (1 << i) != 0:
			out.append(DATA[i])
	if number & (1 << len(DATA)) != 0:
		out.reverse()
	return out
