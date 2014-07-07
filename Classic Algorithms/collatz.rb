# Collatz Conjecture - Start with a number n > 1. Find the number 
# of steps it takes to reach one using the following process: If 
# n is even, divide it by 2. If n is odd, multiply it by 3 and add 1.

$steps = 0
def Collatz(n) 
	if n == 1
		return $steps
	end
	if n % 2 == 0
		n = n / 2
		$steps += 1
		Collatz(n)
	else
		n = n * 3 + 1
		$steps += 1
		Collatz(n)
	end
end

puts "Get a number to find how many steps to get to one using Collatz Conjecture"
number = gets.strip.to_i

Collatz(number)
puts "It takes #{$steps} steps to get from #{number} to 1 using Collatz Conjecture"


