func color_code(colors):
	var colors_code = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

	var units = {
        1e9: "gigaohms",
        1e6: "megaohms",
        1e3: "kiloohms"
    }

	var base_value = colors_code.find(colors[0]) * 10 + colors_code.find(colors[1])
	var magnitude = 10 ** colors_code.find(colors[2])
	var total = base_value * magnitude

	for key in units.keys():
		if total >= key:
			return str(total / key) + " " + units[key]

	return str(total) + " ohms"