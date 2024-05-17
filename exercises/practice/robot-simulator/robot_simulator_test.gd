func test_create_robot_at_origin_facing_north(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "north"
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "north"]
	return [result, expected]


func test_create_robot_at_negative_position_facing_south(robot):
	robot.position = Vector2i(-1, -1)
	robot.direction = "south"
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(-1, -1), "south"]
	return [result, expected]


func test_rotating_clockwise_changes_north_to_east(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "north"
	robot.move("R")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "east"]
	return [result, expected]


func test_rotating_clockwise_changes_east_to_south(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "east"
	robot.move("R")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "south"]
	return [result, expected]


func test_rotating_clockwise_changes_south_to_west(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "south"
	robot.move("R")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "west"]
	return [result, expected]


func test_rotating_clockwise_changes_west_to_north(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "west"
	robot.move("R")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "north"]
	return [result, expected]


func test_rotating_counterclockwise_changes_north_to_west(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "north"
	robot.move("L")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "west"]
	return [result, expected]


func test_rotating_counterclockwise_changes_west_to_south(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "west"
	robot.move("L")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "south"]
	return [result, expected]


func test_rotating_counterclockwise_changes_south_to_east(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "south"
	robot.move("L")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "east"]
	return [result, expected]


func test_rotating_counterclockwise_changes_east_to_north(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "east"
	robot.move("L")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 0), "north"]
	return [result, expected]


func test_moving_forward_one_facing_north_increments_y(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "north"
	robot.move("A")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, 1), "north"]
	return [result, expected]


func test_moving_forward_one_facing_south_decrements_y(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "south"
	robot.move("A")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(0, -1), "south"]
	return [result, expected]


func test_moving_forward_one_facing_east_increments_x(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "east"
	robot.move("A")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(1, 0), "east"]
	return [result, expected]


func test_moving_forward_one_facing_west_decrements_x(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "west"
	robot.move("A")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(-1, 0), "west"]
	return [result, expected]


func test_moving_east_and_north_from_readme(robot):
	robot.position = Vector2i(7, 3)
	robot.direction = "north"
	robot.move("RAALAL")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(9, 4), "west"]
	return [result, expected]


func test_moving_west_and_north(robot):
	robot.position = Vector2i(0, 0)
	robot.direction = "north"
	robot.move("LAAARALA")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(-4, 1), "west"]
	return [result, expected]


func test_moving_west_and_south(robot):
	robot.position = Vector2i(2, -7)
	robot.direction = "east"
	robot.move("RRAAAAALA")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(-3, -8), "south"]
	return [result, expected]


func test_moving_east_and_north(robot):
	robot.position = Vector2i(8, 4)
	robot.direction = "south"
	robot.move("LAAARRRALLLL")
	var result = [robot.position, robot.direction]
	var expected = [Vector2i(11, 5), "north"]
	return [result, expected]
