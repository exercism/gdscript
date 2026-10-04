"""Solve the jug filling problem."""

class Bucket:
	"""A bucket with a capacity, volume and move counter."""

	var volume = 0
	var capacity = 0
	var moves = 0
	var name = ""

	func _init(capacity: int, name: String):
		"""Initialize."""
		self.capacity = capacity
		self.name = name

	func fill_if_empty():
		"""Fill the bucket if it is empty."""
		if self.volume == 0:
			self.volume = self.capacity
			self.moves += 1

	func empty_if_full():
		"""Empty the bucket if it is full."""
		if self.volume == self.capacity:
			self.volume = 0
			self.moves += 1

	func transfer_to(other):
		"""Pour water from self into another bucket."""
		var amount = min(self.volume, other.capacity - other.volume)
		if amount == 0:
			return
		self.volume -= amount
		other.volume += amount
		self.moves += 1


func measure(one: int, two: int, goal: int, start: String):
	"""Pour from source to dest bucket until we have the goal volume."""
	if not one or not two or not goal or start not in ["one", "two"]:
		return null
	# Create and name the two buckets.
	var source = Bucket.new(one, "one")
	var dest = Bucket.new(two, "two")
	# If starting with bucket two, swap pour direction.
	if start == "two":
		var i = dest
		dest = source
		source = i

	# The first move must always be filling the source.
	source.fill_if_empty()

	# Edge case: if goal == dest bucket size, fill the dest.
	if goal == dest.capacity:
		dest.fill_if_empty()

	# Start the pouring! Stop when goal is hit.
	while goal not in [source.volume, dest.volume]:
		# In order to transfer, the source needs water and the dest needs space.
		source.fill_if_empty()
		dest.empty_if_full()
		if source.volume == source.capacity and dest.volume == 0 and dest.moves:
			return null
		source.transfer_to(dest)

	# Figure out which bucket has what. One is at the "target" volume.
	var target = dest
	var other = source
	if source.volume == goal:
		var c = target
		target = other
		other = c
	var moves = source.moves + dest.moves
	return {"moves": moves, "goal_bucket": target.name, "other_bucket": other.volume}

