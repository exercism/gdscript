func _round(value):
	return snappedf(value, 0.01)


func test_age_on_Earth(solution_script):
	var age = solution_script.on_planet('Earth', 1000000000)
	return [_round(age), _round(31.69)]


func test_age_on_Mercury(solution_script):
	var age = solution_script.on_planet('Mercury', 2134835688)
	return [_round(age), _round(280.88)]


func test_age_on_Venus(solution_script):
	var age = solution_script.on_planet('Venus', 189839836)
	return [_round(age), _round(9.78)]


func test_age_on_Mars(solution_script):
	var age = solution_script.on_planet('Mars', 2129871239)
	return [_round(age), _round(35.88)]


func test_age_on_Jupiter(solution_script):
	var age = solution_script.on_planet('Jupiter', 901876382)
	return [_round(age), _round(2.41)]


func test_age_on_Saturn(solution_script):
	var age = solution_script.on_planet('Saturn', 2000000000)
	return [_round(age), _round(2.15)]


func test_age_on_Uranus(solution_script):
	var age = solution_script.on_planet('Uranus', 1210123456)
	return [_round(age), _round(0.46)]


func test_age_on_Neptune(solution_script):
	var age = solution_script.on_planet('Neptune', 1821023456)
	return [_round(age), _round(0.35)]
