enum {
	YACHT,
	ONES,
	TWOS,
	THREES,
	FOURS,
	FIVES,
	SIXES,
	FULL_HOUSE,
	FOUR_OF_A_KIND,
	LITTLE_STRAIGHT,
	BIG_STRAIGHT,
	CHOICE
}


func sum(numbers):
	var out = 0
	for i in numbers:
		out += i
	return out


func score(dice, category):
	var count = {}
	for die in dice:
		if die not in count:
			count[die] = 0
		count[die] += 1

	var values = []
	for die in count:
		values.append(count[die])

	match category:
		CHOICE:
			return sum(dice)
		YACHT when len(count) == 1:
			return 50
		LITTLE_STRAIGHT when len(count) == 5 and 6 not in count:
			return 30
		BIG_STRAIGHT when len(count) == 5 and 1 not in count:
			return 30
		FULL_HOUSE when len(count) == 2 and 2 in values:
			return sum(dice)
		FOUR_OF_A_KIND when len(count) <= 2 and (4 in values or 5 in values):
			for die in count:
				if count[die] >= 4:
					return die * 4
		_:
			if category in count:
				return category * count[category]

	return 0
