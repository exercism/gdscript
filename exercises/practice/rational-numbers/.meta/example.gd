class Rational:
	@export var numer: int = 0
	@export var denom: int = 0

	func gcd(a, b):
		"""Greatest Common Denominator, Euclid's algorithm."""
		if b == 0:
			return a
		return self.gcd(b, a % b)

	func _init(numer, denom):
		var div = self.gcd(numer, denom)
		self.numer = numer / div
		self.denom = denom / div

	func add(other):
		# (a1 * b2 + a2 * b1) / (b1 * b2).
		var numer = self.numer * other.denom + other.numer * self.denom
		var denom = self.denom * other.denom
		return Rational.new(numer, denom)

	func sub(other):
		var numer = self.numer * other.denom - other.numer * self.denom
		var denom = self.denom * other.denom
		return Rational.new(numer, denom)

	func mul(other):
		return Rational.new(self.numer * other.numer, self.denom * other.denom)

	func div(other):
		return Rational.new(self.numer * other.denom, other.numer * self.denom)

	func abs():
		return Rational.new(abs(self.numer), abs(self.denom))

	func exprational(power):
		if power >= 0:
			return Rational.new(self.numer ** power, self.denom ** power)
		else:
			power = abs(power)
			return Rational.new(self.denom ** power, self.numer ** power)

	func expreal(base):
		# n'th root of x = root(x, n) = power(x, 1/n)
		return pow(base**self.numer, 1/float(self.denom))

	func reduce():
		var div = self.gcd(self.numer, self.denom)
		return Rational.new(numer / div, denom / div)

