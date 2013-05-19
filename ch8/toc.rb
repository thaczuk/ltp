line_width = 40

toc = ['Chapter 1: Getting Started', 'page  1',
	'Chapter 2: Numbers	' , 'page  9' ,
	'Chapter 3: Letters	' , 'page 13']

puts 'Table of Contents'.center(line_width)

i=0
while i < toc.length
	if i % 2 == 0
		puts toc[i]
	else
		puts toc[i].rjust(line_width)
	end
	i+=1
end
