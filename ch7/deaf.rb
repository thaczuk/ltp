puts 'Talk to grandma'
talk = gets.chomp

while talk != 'BYE'
	if talk != talk.upcase 
		puts 'HUH?! SPEAK UP, SONNY!'
	else
		i = rand(1938..1950)
		puts 'No, not since ' + i.to_s
	end
	puts 'Talk to grandma'
	talk = gets.chomp
end