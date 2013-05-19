byesInARow = 0

while byesInARow < 3
	puts byesInARow
	puts 'Talk to grandma'
	talk = gets.chomp
	if talk == 'BYE'
		byesInARow = byesInARow + 1
	elsif talk != talk.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
		if byesInARow > 0
			byesInARow = byesInARow - 1
		end
	else
		i = rand(1938..1950)
			puts 'No, not since ' + i.to_s
		if byesInARow > 0
			byesInARow = byesInARow - 1
		end
	end

	
end
