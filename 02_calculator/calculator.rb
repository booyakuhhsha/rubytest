def add(x,y)
	sum = x + y
	sum.to_i
end

def subtract(x,y)
	ans = x - y
	ans.to_i
end

def sum(y)
	y.inject(0){|sum,x| sum + x}
	#look up what inject does
end

def multiply(*p)
	final = 1.0
	p.each { |i| final *= i }
	final
	#look up how this syntax works and what is 
end

def power(x,y)
	ans = x**y
end

def factorial(n)
	if n == 0
		1
	else
		n * factorial(n-1)
	end
end

