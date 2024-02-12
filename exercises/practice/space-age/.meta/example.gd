var EARTH_SECONDS = 31557600.0


var orbital_periods = {
	'Mercury': 0.2408467,
	'Venus' : 0.61519726,
	'Earth' : 1,
	'Mars' : 1.8808158,
	'Jupiter' : 11.862615,
	'Saturn' : 29.447498,
	'Uranus' : 84.016846,
	'Neptune' : 164.79132
}


func on_planet(planet, seconds):
	var ratio = orbital_periods.get(planet)
	return seconds / EARTH_SECONDS / ratio
