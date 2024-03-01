func color_code(colors):
	var size = colors.size()
	if size == 1: return "0 ohms"
	
	var colors_code = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
	var units = {
		1e9: "gigaohms",
		1e6: "megaohms",
		1e3: "kiloohms"
		}
	var tolerances = {
		"grey"   : 0.05,
		"violet" : 0.1,
		"blue"   : 0.25,
		"green"  : 0.5,
		"brown"  : 1,
		"red"    : 2,
		"gold"   : 5,
		"silver" : 10
		}

	var total = 0
	var magnitute = pow(10, colors_code.find(colors[-2]))

	for i in range(0, size - 2):
		var color = colors[i]
		total += colors_code.find(color) * pow(10, (size - i - 3))
	total *= magnitute
	
	var tolerance  = tolerances[colors[-1]] #work
	for key in units.keys():
		if total >= key:
			return "%s %s ±%s%%" % [(total / key), units[key], tolerance]
	return "%s ohms ±%s%%" % [total, tolerance]
