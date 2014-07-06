# Check if Palindrome - Checks if the string entered by the 
# user is a palindrome. That is that it reads the same 
# forwards as backwards like “racecar”

puts "Enter a word to test for palindrome"
word = gets.strip

reversed = word.reverse.downcase

if word.downcase === reversed
	puts "%s is a palindrome" % word
else
	puts "%s is not a palindrome" % word
end