# Fibonacci Sequence - Enter a number and have the program 
# generate the Fibonacci sequence to that number or to the Nth number.

def Fibonacci (arr, number)
	until(arr[-1] >= number)
		arr << (arr[-1] + arr[-2])

		if arr[-1] > number
			arr.pop
			return arr.join(',');		
		else
			Fibonacci(arr, number)
		end
	end
end

fib = [0,1]
puts "Enter a number"
number = gets.strip.to_i

if number == 0 || number == 1
	return number;
else
	puts(Fibonacci(fib, number))
end

