class Frac:
	def __init__(self, nume, deno):
		self.nume = nume
		self.deno = deno

	def __add__(self, other_frac):
		new_nume = self.nume * other_frac.deno + self.deno * other_frac.nume
		new_deno = self.deno * other_frac.deno
		gcd = self.gcd(new_nume, new_deno)
		return Frac(new_nume / gcd, new_deno / gcd)

	def gcd(self, a, b):
		while b:
			a, b = b, a % b
		return a

frac1 = Frac(2, 3)
frac2 = Frac(4, 3)
result = frac1 + frac2
print(result.nume, '/', result.deno)