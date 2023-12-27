func is_valid(sides):
	var all_sides_positive = sides.all(func(s): return s > 0)
	sides.sort()
	var satisfies_inequality = (sides[0] + sides[1]) >= sides[2]
	return all_sides_positive and satisfies_inequality


func count_unique(lst):
	return lst.reduce(
		func(acc, elem):
			acc[elem] = true
			return acc, {}).size()

func is_equilateral(sides):
	return is_valid(sides) and count_unique(sides) == 1


func is_isosceles(sides):
	return is_valid(sides) and count_unique(sides) < 3


func is_scalene(sides):
	return is_valid(sides) and count_unique(sides) == 3
