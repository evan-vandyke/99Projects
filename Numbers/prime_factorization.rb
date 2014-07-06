# Prime Factorization - Have the user enter a number 
#and find all Prime Factors (if there are any) and display them.

def prime?(number)
	x = Math.sqrt(number).ceil
	for num in 2..x
		if number % num == 0
			return false
		end
	end
	return true
end

def get_prime_factors(number)
	primes = []
	for num in (2..number/2)
		if ( (prime?(num)) && (number % num == 0))
			primes << num
		end
	end
	return primes
end

puts "Enter a number to find the prime factors"
number = gets.strip.to_i

prime_factors = get_prime_factors(number)

if prime_factors.count == 0
	puts "There are no prime factors for this number"
else
	puts "The prime factors are %s" % prime_factors.join(',')
end





