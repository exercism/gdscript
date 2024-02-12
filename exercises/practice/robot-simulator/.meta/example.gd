@export var position : Vector2i
@export var direction : String


var allowed_directions = ["north", "east", "south", "west"]


func move(instructions: String):
	for instruction in instructions:
		match [instruction, direction]:
			["L", _]:
				var index = allowed_directions.find(direction) - 1
				direction = allowed_directions[index]
			["R", _]:
				var index = allowed_directions.find(direction)
				index = (index + 1) % 4
				direction = allowed_directions[index]
			["A", "north"]:
				position += Vector2i(0, 1)
			["A", "south"]:
				position += Vector2i(0, -1)
			["A", "east"]:
				position += Vector2i(1, 0)
			["A", "west"]:
				position += Vector2i(-1, 0)
