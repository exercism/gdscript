@export var position : Vector2i
@export var direction : Vector2i


var allowed_directions = [Vector2i.DOWN, Vector2i.RIGHT, Vector2i.UP, Vector2i.LEFT]


func move(instructions: String):
	for instruction in instructions:
		match instruction:
			"L":
				var index = allowed_directions.find(direction) - 1
				direction = allowed_directions[index]
			"R":
				var index = allowed_directions.find(direction)
				index = (index + 1) % 4
				direction = allowed_directions[index]
			"A":
				position += direction
