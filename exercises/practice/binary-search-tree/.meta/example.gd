class TreeNode:
	var datum = null
	var left = null
	var right = null

	func _init(datum, left, right):
		self.datum = datum
		self.left = left
		self.right = right

	func insert(value):
		if value > datum:
			if right == null:
				right = TreeNode.new(value, null, null)
			else:
				right.insert(value)
		else:
			if left == null:
				left = TreeNode.new(value, null, null)
			else:
				left.insert(value)

	func values():
		var out = []
		if left != null:
			for i in left.values():
				out.append(i)
		out.append(datum)
		if right != null:
			for i in right.values():
				out.append(i)
		return out


class BinarySearchTree:
	var _root = null

	func _init(data):
		if len(data) > 0:
			_root = TreeNode.new(data[0], null, null)
		for datum in data.slice(1):
			_root.insert(datum)

	func data():
		return _root

	func sorted_data():
		if _root == null:
			return []
		return _root.values()
