class CircularBuffer:
	var _cap = 0
	var _size = 0
	var _write = 0
	var _read = 0
	var _data = []

	func _init(cap):
		_cap = cap
		for i in range(cap):
			_data.append(null)

	func write(value):
		if _size == _cap:
			return false
		_data[_write] = value
		_write = (_write + 1) % _cap
		_size += 1
		return true

	func read():
		if _size == 0:
			return null
		_size -= 1
		var out = _data[_read]
		_read = (_read + 1) % _cap
		return out

	func overwrite(value):
		if _size == _cap:
			self.read()
		self.write(value)

	func clear():
		_size = 0
		_read = _write
