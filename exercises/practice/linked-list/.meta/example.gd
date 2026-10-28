class ListNode:

	var _prev = null
	var _next = null
	var _val = null

	func _init(value):
		_val = value

	func add_prev(value):
		var new = ListNode.new(value)
		link(_prev, new, self)
		return new

	func add_next(value):
		var new = ListNode.new(value)
		link(self, new, _next)
		return new

	func link(a, b, c):
		a._next = b
		b._next = c
		c._prev = b
		b._prev = a

	func remove():
		_next._prev = _prev
		_prev._next = _next
		return _val


class LinkedList:

	var _head = null
	var _tail = null
	var _len = 0

	func _init():
		_head = ListNode.new(null)
		_tail = ListNode.new(null)
		_head._next = _tail
		_tail._prev = _head

	func push(value):
		_tail.add_prev(value)
		_len += 1

	func unshift(value):
		_head.add_next(value)
		_len += 1

	func delete(value):
		var cur = _head._next
		while cur != _tail and cur._val != value:
			cur = cur._next
		if cur._val != value:
			return
		cur.remove()
		_len -= 1

	func remove(node):
		var val = node.remove()
		_len -= 1
		return val

	func pop():
		return remove(_tail._prev)

	func shift():
		return remove(_head._next)

	func count():
		return _len
