class Array
	def shuffle
		self.sort_by{rand}
	end
end

class Integer
	def factorial
		if self < 0
			return 'You can\'t take the factorial of a negative number!' 
		end
		if self <= 1 
			1
		else
	    	self * (self-1).factorial
		end
	end

	def to_roman
		raise 'Must use positive integer' if self <= 0
		roman = ''
		roman << 'M' * (self / 1000) 
		roman << 'D' * (self % 1000 / 500) 
		roman << 'C' * (self % 500 / 100) 
		roman<<'L'*(self%100/ 50) 
		roman<<'X'*(self% 50/ 10) 
		roman<<'V'*(self% 10/ 5) 
		roman<<'I'*(self% 5/ 1)
		roman
		
		
	end
end

=begin

	
end
unsortedWords = []
puts 'Enter words, one line at a time. Press enter on an empty line to stop.'
newWord = gets
while newWord != "\n"
	unsortedWords.push newWord
	newWord = gets	
end

puts 'Your sorted words are: '
puts unsortedWords.sort


puts 'Enter an integer'
fact = gets.chomp.to_i
puts "Factorial is: #{fact.factorial}"
puts
puts 'Roman: ' + fact.to_roman
=end
puts 7.factorial.to_roman.split(//).shuffle