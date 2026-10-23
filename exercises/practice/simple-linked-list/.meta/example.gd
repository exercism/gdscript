class ListNode:

	var value = 0
	var next = null

	func _init(value, next = null):
		self.value = value
		self.next = next


class LinkedList:

	var _head = null

	func _init(values):
		for value in values:
			push(value)

	func count():
		var cur = _head
		var count = 0
		while cur != null:
			count += 1
			cur = cur.next
		return count

	func push(value):
		_head = ListNode.new(value, _head)

	func peek():
		if _head == null:
			return null
		return _head.value

	func pop():
		if _head == null:
			return null
		var out = _head.value
		_head = _head.next
		return out

	func to_list():
		var values = []
		var cur = _head
		while cur != null:
			values.append(cur.value)
			cur = cur.next
		values.reverse()
		return values

	func reverse():
		var values = to_list()
		values.reverse()
		_head = null
		for value in values:
			push(value)
