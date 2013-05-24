puts 'What year were you born?'
year = gets.chomp

puts 'What month were you born?'
month = gets.chomp

puts 'What day were you born?'
day = gets.chomp

born = Time.local(year, month, day)
now = Time.new

howOld = (now - born) / (60*60*24*365.25)
puts 'You are ' + howOld.to_s + 'years old.'

for i in 0..(howOld.to_i - 1)
   puts "SPANK!"
end
