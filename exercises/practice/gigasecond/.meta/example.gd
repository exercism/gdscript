func add(time):
	var seconds = Time.get_unix_time_from_datetime_string(time)
	seconds += 1_000_000_000
	return Time.get_datetime_string_from_unix_time(seconds)
