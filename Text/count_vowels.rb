# Count Vowels - Enter a string and the program counts the number 
# of vowels in the text. For added complexity have it report 
# a sum of each vowel found.

puts "Enter string to count vowels"
str = gets.strip.downcase.split('')

vowels = { "a" => 0, "e" => 0, "i" => 0, "o" => 0, "u" => 0 }

str.each do |c|
	if vowels.key?(c)
		 vowels[c] += 1
	end
end

vowels.each do |key,value|
	puts "%s: %d" % [key,value]
end


