# Pig Latin - Pig Latin is a game of alterations played on 
# the English language game. To create the Pig Latin form 
# of an English word the initial consonant sound is transposed 
# to the end of the word and an ay is affixed 
# (Ex.: "banana" would yield anana-bay). 

puts "Enter word to git Pig Latin version"
word = gets.strip

vowels = "a e i o u".split(" ")

if vowels.include? word[0].downcase
	word << "-way"
else
	c = word[0]
	word[0] = ''
	word << '-' << c << 'ay'
end
puts word