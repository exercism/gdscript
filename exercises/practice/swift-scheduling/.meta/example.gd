const QUARTERS = [[0, 4], [0, 7], [0, 10], [1, 1]]


func delivery_date(start: String, description: String):
	var now_details = Time.get_datetime_dict_from_datetime_string(start, true)
	var now_ts = Time.get_unix_time_from_datetime_string(start)
	var delivery = null
	var offset = 0
	if description == "NOW":
		# NOW: Two hours after the meeting started
		offset = 2 * 60 * 60
	elif description == "ASAP":
		# ASAP Before 12:00 => Today at 17:00
		# ASAP After  12:00 => Tomorrow at 12:00
		if now_details["hour"] <= 12:
			now_details["hour"] = 17
		else:
			now_details["hour"] = 13
			offset = 24 * 60 * 60
		now_details["minute"] = 0
		now_details["second"] = 0
	elif description == "EOW":
		# EOW Monday, Tuesday, Wednesday => Friday at 17:00
		# EOW Thursday or Friday         => Sunday at 20:00
		if (
			now_details["weekday"]
			in [Time.WEEKDAY_MONDAY, Time.WEEKDAY_TUESDAY, Time.WEEKDAY_WEDNESDAY]
		):
			now_details["hour"] = 17
			offset = 24 * 60 * 60 * (Time.WEEKDAY_FRIDAY - now_details["weekday"])
		else:
			now_details["hour"] = 20
			offset = 24 * 60 * 60 * (Time.WEEKDAY_SATURDAY + 1 - now_details["weekday"])
		now_details["minute"] = 0
		now_details["second"] = 0
	elif description.ends_with("M"):
		# "<N>M" Before N-th month      => At 8:00 on the first workday¹ of this year's N-th month
		# "<N>M" After or in N-th month => At 8:00 on the first workday¹ of next year's N-th month
		var target_month = int(description.rstrip("M"))
		if now_details["month"] >= target_month:
			now_details["year"] += 1
		now_details["month"] = target_month
		now_details["day"] = 1
		now_details["hour"] = 8
		now_details["minute"] = 0
		now_details["second"] = 0

		# Ensure it is not a weekend -- compute day of week and roll forward to Monday.
		now_details = Time.get_datetime_dict_from_unix_time(
			Time.get_unix_time_from_datetime_dict(now_details)
		)
		if now_details["weekday"] == Time.WEEKDAY_SATURDAY:
			offset += 24 * 60 * 60 * 2
		elif now_details["weekday"] == Time.WEEKDAY_SUNDAY:
			offset += 24 * 60 * 60 * 1
	elif description[0] == "Q":
		# "Q<N>" Before or in N-th quarter² => At 8:00 on the last workday¹ of this year's N-th quarter²
		# "Q<N>" After N-th quarter²        => At 8:00 on the last workday¹ of next year's N-th quarter²
		var quarter = int(description.lstrip("Q"))
		var current = ((now_details["month"] - 1) / 3) + 1
		var year_offset = QUARTERS[quarter - 1][0]
		var month = QUARTERS[quarter - 1][1]
		if current > quarter:
			year_offset = 1
		now_details = {
			"year": now_details["year"] + year_offset,
			"month": month,
			"day": 1,
			"hour": 8,
			"minute": 0,
			"second": 0
		}
		now_details = Time.get_datetime_dict_from_unix_time(
			Time.get_unix_time_from_datetime_dict(now_details) - 24 * 60 * 60 * 1
		)

		# Ensure it is not a weekend -- compute day of week and roll backward to Friday.
		if now_details["weekday"] == Time.WEEKDAY_SATURDAY:
			offset = 24 * 60 * 60 * -1
		elif now_details["weekday"] == Time.WEEKDAY_SUNDAY:
			offset = 24 * 60 * 60 * -2

	return Time.get_datetime_string_from_unix_time(
		Time.get_unix_time_from_datetime_dict(now_details) + offset
	)
