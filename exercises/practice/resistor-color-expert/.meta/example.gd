func color_code(colors):
	if colors.size() == 1: return "0 ohms"
	
	var colors_code = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
	var units = {
		1e9: "gigaohms",
		1e6: "megaohms",
		1e3: "kiloohms"
		}
	var tolerances = {
		"grey"   : "0.05",
		"violet" : "0.1",
		"blue"   : "0.25",
		"green"  : "0.5",
		"brown"  : "1",
		"red"    : "2",
		"gold"   : "5",
		"silver" : "10"
		}

	var total = 0
	var magnitute = pow(10, colors_code.find(colors[-2]))

	for i in range(0, colors.size() - 3 ):
		total += colors_code.find([colors[i]]) * magnitute

	var tolerance  = tolerances[colors[-1]]

	for key in units.keys():
		if total >= key:
			return str(total / key) + " " + units[key] + "+" + tolerance + "%"

	return str(total) + " ohms " + "+" + tolerance + "%"
