words = []
puts 'Enter words, one line at a time. Press enter on an empty line to stop.'
newWord = gets
while newWord != "\n"
	words.push newWord
	newWord = gets
	
end

puts 'Your words are: '
puts words.sort