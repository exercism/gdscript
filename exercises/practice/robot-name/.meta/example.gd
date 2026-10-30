const ALPHA = "QWERTYUIOPASDFGHJKLZXCVBNM"


class Robot:
	var name = null
	var _rng = null
	static var names = {}

	func _init(rng):
		_rng = rng
		reset()

	func gen_name():
		return (
			"%s%s%03d"
			% [
				ALPHA[_rng.randi_range(0, 25)],
				ALPHA[_rng.randi_range(0, 25)],
				_rng.randi_range(0, 999),
			]
		)

	func reset():
		while name == null or name in Robot.names:
			name = gen_name()
		Robot.names[name] = true
