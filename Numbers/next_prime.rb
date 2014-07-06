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
puts i
question = "Continue? (y/n) "
answer = gets.chomp()
if answer == 'y'
	cont = true
	i += 1
else
	cont = false
end

until(cont == false)
	puts "hello"
end


