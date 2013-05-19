puts 'Please enter a start year'
startYear = gets.chomp.to_i

puts 'Please enter an end year'
endYear = gets.chomp.to_i

if startYear > endYear
	puts "End year should be bigger than start year"
else
	puts 'The leap years are: '
	while (startYear <= endYear)
     if
       (((startYear % 4 == 0) && (startYear %100 !=0)) || (startYear % 400 == 0))
       puts startYear.to_s

     end
     startYear= startYear.to_i + 1
   end
end