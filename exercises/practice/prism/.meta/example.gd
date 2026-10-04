func normalize(deg):
	while deg < 0:
		deg += 360
	while deg >= 360:
		deg -= 360
	return deg


func angle_to(v1, v2):
	var d = v2 - v1
	var deg = 180 * d.angle() / PI
	return normalize(deg)


func is_close(a: float, b: float) -> bool:
	var diff = abs(a - b)
	if diff > 350:
		diff = 360 - diff
	return diff < 2


func next_hit(position, angle, prisms):
	var hit = null
	var dist = null
	for prism in prisms:
		if is_close(angle_to(position, prism[1]), angle):
			if position == prism[1]:
				continue
			if hit == null or position.distance_to(prism[1]) < dist:
				hit = prism
				dist = position.distance_to(prism[1]) 
	return hit


func find_sequence(position, angle, prisms):
	var sequence = []
	angle = normalize(angle)
	while true:
		var hit = next_hit(position, angle, prisms)
		if hit == null:
			break
		sequence.append(hit[0])
		position = hit[1]
		angle = normalize(angle + hit[2])
	return sequence
