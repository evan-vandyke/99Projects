# Count Words in a String - Counts the number of individual words 
# in a string. For added complexity read these strings in from
# a text file and generate a summary.

puts "Enter filename"
filename = gets.strip
words = ''
File.open(filename).each_line do |line|
	words << line.chomp unless line.chomp.empty?
end

puts "There are %d words in that text" % words.split(" ").count