class Set:

	var _elements = {}

	func _init(elements):
		for element in elements:
			_elements[element] = null

	func empty():
		return len(_elements) == 0

	func contains(element):
		return element in _elements

	func subset(other):
		for element in _elements:
			if not other.contains(element):
				return false
		return true

	func disjoint(other):
		for element in _elements:
			if other.contains(element):
				return false
		return true

	func equal(other):
		return subset(other) and other.subset(self)

	func add(element):
		var elements = []
		for e in _elements:
			elements.append(e)
		elements.append(element)
		return Set.new(elements)

	func intersection(other):
		var elements = []
		for element in _elements:
			if other.contains(element):
				elements.append(element)
		return Set.new(elements)

	func difference(other):
		var elements = []
		for element in _elements:
			if not other.contains(element):
				elements.append(element)
		return Set.new(elements)

	func union(other):
		var elements = []
		for element in self._elements:
			elements.append(element)
		for element in other._elements:
			elements.append(element)
		return Set.new(elements)
