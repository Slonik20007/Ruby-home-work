def upto2()
	a = 1.upto(10)
	yield a
end
upto2 { |x| print x, " " }