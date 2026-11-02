const LOOPS = 5000


func shared_birthday(birthdays):
	var seen = {}
	for birthday in birthdays:
		var d = Time.get_datetime_dict_from_datetime_string(birthday, false)
		var n = d["month"] * 100 + d["day"]
		if n in seen:
			return true
		seen[n] = true
	return false


func random_birthdates(count):
	var dates = []
	var limit = {
		1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31
	}
	var rng = RandomNumberGenerator.new()
	for i in range(count):
		var month = rng.randi_range(1, 12)
		(
			dates
			. append(
				{
					"year": 2001,
					"month": month,
					"day": rng.randi_range(1, limit[month]),
				}
			)
		)
	return dates


func estimated_probability_of_shared_birthday(count):
	var rng = RandomNumberGenerator.new()
	var shared = 0.0
	for i in range(LOOPS):
		var seen = {}
		for j in count:
			var date = rng.randi_range(1, 365)
			if date in seen:
				shared += 1
				break
			seen[date] = true
	return 100 * shared / LOOPS
