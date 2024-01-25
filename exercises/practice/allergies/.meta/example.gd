@export var score : int
@export var lst: Array: get = _get_lst

const ALLERGENS = [
	"eggs",
	"peanuts",
	"shellfish",
	"strawberries",
	"tomatoes",
	"chocolate",
	"pollen",
	"cats",
]



func allergic_to(item):
	var index = ALLERGENS.find(item)
	return bool(1 << index & score)



func _get_lst():
	var allergies = []
	for item in ALLERGENS:
		if allergic_to(item):
			allergies.append(item)
	return allergies
