def shuffle arr 
	arr.sort_by{rand}
end


unsortedWords = []
puts 'Enter words, one line at a time. Press enter on an empty line to stop.'
newWord = gets
while newWord != "\n"
	unsortedWords.push newWord
	newWord = gets	
end

puts 'Your shuffled array: '
puts shuffle unsortedWords

