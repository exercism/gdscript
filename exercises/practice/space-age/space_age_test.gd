func roughly_equal(n1, n2):
	return abs(n1 - n2) <= 0.01


func test_age_on_Earth(solution_script):
	var age = solution_script.on_planet('Earth', 1000000000)
	var expected = 31.69
	return [true, roughly_equal(age, expected)]


func test_age_on_Mercury(solution_script):
	var age = solution_script.on_planet('Mercury', 2134835688)
	var expected = 280.88
	return [true, roughly_equal(age, expected)]


func test_age_on_Venus(solution_script):
	var age = solution_script.on_planet('Venus', 189839836)
	var expected = 9.78
	return [true, roughly_equal(age, expected)]


func test_age_on_Mars(solution_script):
	var age = solution_script.on_planet('Mars', 2129871239)
	var expected = 35.88
	return [true, roughly_equal(age, expected)]


func test_age_on_Jupiter(solution_script):
	var age = solution_script.on_planet('Jupiter', 901876382)
	var expected = 2.41
	return [true, roughly_equal(age, expected)]


func test_age_on_Saturn(solution_script):
	var age = solution_script.on_planet('Saturn', 2000000000)
	var expected = 2.15
	return [true, roughly_equal(age, expected)]


func test_age_on_Uranus(solution_script):
	var age = solution_script.on_planet('Uranus', 1210123456)
	var expected = 0.46
	return [true, roughly_equal(age, expected)]


func test_age_on_Neptune(solution_script):
	var age = solution_script.on_planet('Neptune', 1821023456)
	var expected = 0.35
	return [true, roughly_equal(age, expected)]
