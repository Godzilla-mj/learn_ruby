
def add a, b
	a + b
end


def subtract a, b
	a - b
end


def sum numbers
	if numbers == []
		return 0
	end
	numbers.inject(:+)
end


def multiply numbers
	if numbers == []
		return 0
	end
	numbers.inject(:*)
end


def power a, b
	a ** b
end


def factorial number
	if number == 0 || number == 1
		1
	else
		total = 1
		while number > 0 do
			total *= number
			number -= 1
		end
		total
end


