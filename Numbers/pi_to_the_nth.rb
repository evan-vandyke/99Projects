# Find PI to the Nth Digit - Enter a number and have the program generate PI 
# up to that many decimal places. Keep a limit to how far the program will go.

require "bigdecimal"
require "bigdecimal/math"

include BigMath
LIMIT = 100

def set_pi(pi)
	pi = pi.to_s.split("")
	delete_elements = [0,0,-1,-1]
	delete_elements.each do |delete|
		pi.delete_at(delete)
	end
	pi.join
end

our_PI = set_pi(PI(65))
under_limit = false

until(under_limit)
	puts "How long do you want PI? (Keep it under %s): " % LIMIT
	user_number = gets.chomp().to_i
	if user_number < LIMIT
		under_limit = true
	else
		puts "\n*****Number is too high, stay under %d*****" % LIMIT
	end
end

puts(our_PI[0,user_number].insert(1,"."))



