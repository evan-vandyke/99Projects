# Next Prime Number - Have the program find prime numbers
#  until the user chooses to stop asking for the next one.


def is_prime?(number)
	x = Math.sqrt(number).ceil
	for num in 2..x
		if number % num == 0
			return false
		end
	end
	return true
end

i = 2
question = "Continue? (y/n) "
answer = 'y'

while answer == 'y'
	if i == 2 || is_prime?(i)
		puts i
		puts question
		answer = gets.strip
		i += 1
	else
		i += 1
	end
end


