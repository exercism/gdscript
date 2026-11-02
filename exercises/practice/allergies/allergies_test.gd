func _sorted(array):
	# Array.sort() sorts an array in place and returns null.
	# This helper method allows us to sort and compare in the same line.
	array.sort()
	return array



func test_eggs_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("eggs")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_eggs_allergic_only_to_eggs(allergies):
	allergies.score = 1
	var got = allergies.allergic_to("eggs")
	var want = true
	return [got, want, "with score=1, allergic_to() == %s, but want %s" % [got, want]]


func test_eggs_allergic_to_eggs_and_something_else(allergies):
	allergies.score = 3
	var got = allergies.allergic_to("eggs")
	var want = true
	return [got, want, "with score=3, allergic_to() == %s, but want %s" % [got, want]]


func test_eggs_allergic_to_something_but_not_eggs(allergies):
	allergies.score = 2
	var got = allergies.allergic_to("eggs")
	var want = false
	return [got, want, "with score=2, allergic_to() == %s, but want %s" % [got, want]]


func test_eggs_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("eggs")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_peanuts_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("peanuts")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_peanuts_allergic_only_to_peanuts(allergies):
	allergies.score = 2
	var got = allergies.allergic_to("peanuts")
	var want = true
	return [got, want, "with score=2, allergic_to() == %s, but want %s" % [got, want]]


func test_peanuts_allergic_to_peanuts_and_something_else(allergies):
	allergies.score = 7
	var got = allergies.allergic_to("peanuts")
	var want = true
	return [got, want, "with score=7, allergic_to() == %s, but want %s" % [got, want]]


func test_peanuts_allergic_to_something_but_not_peanuts(allergies):
	allergies.score = 5
	var got = allergies.allergic_to("peanuts")
	var want = false
	return [got, want, "with score=5, allergic_to() == %s, but want %s" % [got, want]]


func test_peanuts_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("peanuts")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_shellfish_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("shellfish")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_shellfish_allergic_only_to_shellfish(allergies):
	allergies.score = 4
	var got = allergies.allergic_to("shellfish")
	var want = true
	return [got, want, "with score=4, allergic_to() == %s, but want %s" % [got, want]]


func test_shellfish_allergic_to_shellfish_and_something_else(allergies):
	allergies.score = 14
	var got = allergies.allergic_to("shellfish")
	var want = true
	return [got, want, "with score=14, allergic_to() == %s, but want %s" % [got, want]]


func test_shellfish_allergic_to_something_but_not_shellfish(allergies):
	allergies.score = 10
	var got = allergies.allergic_to("shellfish")
	var want = false
	return [got, want, "with score=10, allergic_to() == %s, but want %s" % [got, want]]


func test_shellfish_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("shellfish")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_strawberries_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("strawberries")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_strawberries_allergic_only_to_strawberries(allergies):
	allergies.score = 8
	var got = allergies.allergic_to("strawberries")
	var want = true
	return [got, want, "with score=8, allergic_to() == %s, but want %s" % [got, want]]


func test_strawberries_allergic_to_strawberries_and_something_else(allergies):
	allergies.score = 28
	var got = allergies.allergic_to("strawberries")
	var want = true
	return [got, want, "with score=28, allergic_to() == %s, but want %s" % [got, want]]


func test_strawberries_allergic_to_something_but_not_strawberries(allergies):
	allergies.score = 20
	var got = allergies.allergic_to("strawberries")
	var want = false
	return [got, want, "with score=20, allergic_to() == %s, but want %s" % [got, want]]


func test_strawberries_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("strawberries")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_tomatoes_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("tomatoes")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_tomatoes_allergic_only_to_tomatoes(allergies):
	allergies.score = 16
	var got = allergies.allergic_to("tomatoes")
	var want = true
	return [got, want, "with score=16, allergic_to() == %s, but want %s" % [got, want]]


func test_tomatoes_allergic_to_tomatoes_and_something_else(allergies):
	allergies.score = 56
	var got = allergies.allergic_to("tomatoes")
	var want = true
	return [got, want, "with score=56, allergic_to() == %s, but want %s" % [got, want]]


func test_tomatoes_allergic_to_something_but_not_tomatoes(allergies):
	allergies.score = 40
	var got = allergies.allergic_to("tomatoes")
	var want = false
	return [got, want, "with score=40, allergic_to() == %s, but want %s" % [got, want]]


func test_tomatoes_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("tomatoes")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_chocolate_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("chocolate")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_chocolate_allergic_only_to_chocolate(allergies):
	allergies.score = 32
	var got = allergies.allergic_to("chocolate")
	var want = true
	return [got, want, "with score=32, allergic_to() == %s, but want %s" % [got, want]]


func test_chocolate_allergic_to_chocolate_and_something_else(allergies):
	allergies.score = 112
	var got = allergies.allergic_to("chocolate")
	var want = true
	return [got, want, "with score=112, allergic_to() == %s, but want %s" % [got, want]]


func test_chocolate_allergic_to_something_but_not_chocolate(allergies):
	allergies.score = 80
	var got = allergies.allergic_to("chocolate")
	var want = false
	return [got, want, "with score=80, allergic_to() == %s, but want %s" % [got, want]]


func test_chocolate_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("chocolate")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_pollen_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("pollen")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_pollen_allergic_only_to_pollen(allergies):
	allergies.score = 64
	var got = allergies.allergic_to("pollen")
	var want = true
	return [got, want, "with score=64, allergic_to() == %s, but want %s" % [got, want]]


func test_pollen_allergic_to_pollen_and_something_else(allergies):
	allergies.score = 224
	var got = allergies.allergic_to("pollen")
	var want = true
	return [got, want, "with score=224, allergic_to() == %s, but want %s" % [got, want]]


func test_pollen_allergic_to_something_but_not_pollen(allergies):
	allergies.score = 160
	var got = allergies.allergic_to("pollen")
	var want = false
	return [got, want, "with score=160, allergic_to() == %s, but want %s" % [got, want]]


func test_pollen_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("pollen")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_cats_not_allergic_to_anything(allergies):
	allergies.score = 0
	var got = allergies.allergic_to("cats")
	var want = false
	return [got, want, "with score=0, allergic_to() == %s, but want %s" % [got, want]]


func test_cats_allergic_only_to_cats(allergies):
	allergies.score = 128
	var got = allergies.allergic_to("cats")
	var want = true
	return [got, want, "with score=128, allergic_to() == %s, but want %s" % [got, want]]


func test_cats_allergic_to_cats_and_something_else(allergies):
	allergies.score = 192
	var got = allergies.allergic_to("cats")
	var want = true
	return [got, want, "with score=192, allergic_to() == %s, but want %s" % [got, want]]


func test_cats_allergic_to_something_but_not_cats(allergies):
	allergies.score = 64
	var got = allergies.allergic_to("cats")
	var want = false
	return [got, want, "with score=64, allergic_to() == %s, but want %s" % [got, want]]


func test_cats_allergic_to_everything(allergies):
	allergies.score = 255
	var got = allergies.allergic_to("cats")
	var want = true
	return [got, want, "with score=255, allergic_to() == %s, but want %s" % [got, want]]


func test_list_when_no_allergies(allergies):
	allergies.score = 0
	var got =_sorted(allergies.lst)
	var want = _sorted([])
	return [
		got,
		want,
		"with score=0, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_just_eggs(allergies):
	allergies.score = 1
	var got =_sorted(allergies.lst)
	var want = _sorted(['eggs'])
	return [
		got,
		want,
		"with score=1, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_just_peanuts(allergies):
	allergies.score = 2
	var got =_sorted(allergies.lst)
	var want = _sorted(['peanuts'])
	return [
		got,
		want,
		"with score=2, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_just_strawberries(allergies):
	allergies.score = 8
	var got =_sorted(allergies.lst)
	var want = _sorted(['strawberries'])
	return [
		got,
		want,
		"with score=8, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_eggs_and_peanuts(allergies):
	allergies.score = 3
	var got =_sorted(allergies.lst)
	var want = _sorted(['eggs', 'peanuts'])
	return [
		got,
		want,
		"with score=3, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_more_than_eggs_but_not_peanuts(allergies):
	allergies.score = 5
	var got =_sorted(allergies.lst)
	var want = _sorted(['eggs', 'shellfish'])
	return [
		got,
		want,
		"with score=5, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_lots_of_stuff(allergies):
	allergies.score = 248
	var got =_sorted(allergies.lst)
	var want = _sorted(['strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'])
	return [
		got,
		want,
		"with score=248, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_everything(allergies):
	allergies.score = 255
	var got =_sorted(allergies.lst)
	var want = _sorted(['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'])
	return [
		got,
		want,
		"with score=255, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_no_allergen_score_parts(allergies):
	allergies.score = 509
	var got =_sorted(allergies.lst)
	var want = _sorted(['eggs', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'])
	return [
		got,
		want,
		"with score=509, lst\n  got: %s\n  want %s" % [got, want]
	]


func test_list_when_no_allergen_score_parts_without_highest_valid_score(allergies):
	allergies.score = 257
	var got =_sorted(allergies.lst)
	var want = _sorted(['eggs'])
	return [
		got,
		want,
		"with score=257, lst\n  got: %s\n  want %s" % [got, want]
	]
