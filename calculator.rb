class Calculator

	def initialize
		@calculations = []
		@count = 0
	end

	def counter
		@count += 1
	end

	def add(x,y)
		counter 
		@calculations << x+y
		x+y	
	end

	def subtract(x,y)
		counter 
		@calculations << x-y
		x-y
	end

	def square(x)
		counter 
		@calculations << x*x
		x*x
	end

	def division(x,y)
		counter
		@calculations << x/y
		x/y
	end

	def multiply(x,y)
		counter
		@calculations << x*y
		x*y
	end

	def power(x,y)
		counter
		@calculations << x**y
		x**y
	end

	def last_result
		@calculations[@count-2]
	end

	def clear
		@calculations = @calculations.clear
		@calculations[0] = 0
		@calculations[0]
	end

end

calc = Calculator.new
    result = calc.add(10,5)
    result = calc.add(2,2)
    result = calc.last_result
    puts result


