bday_hash = {}
filename = 'birthdays.txt'


File.open(filename, 'r') do |file|
  file.each_line do |line|
    line_data = line.split(',')
    bday_hash[line_data[0]] = line_data[1]
  end
end

bday_hash.each do |name, bday| 
	puts "#{name}: #{bday}"
end

puts 'Enter a name '
input = gets.chomp

bday_hash.each do |name, bday| 
	if input == name
		puts "Your birthday is #{bday}"
		exit
	end
end

puts 'The name could not be found :('