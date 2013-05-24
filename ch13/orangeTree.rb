class OrangeTree
	def initialize 
		@height 	= 0
		@fruit 		= 0
		@alive 		= true
		puts "New tree planted is #{height}m and " + "produced #{@fruit} oranges."
	end

	def height
		if @alive
			@height
		else
			'A dead tree is not very tall.'
		end
	end

=begin
	def one_year_passes
		if @alive
			@height = @height + 1
			@fruit = 0
			if @height > 10 
				@alive = false
				puts "Dead tree"			
			elsif @age > 2
				@fruit = @height * 2
				"This year your tree grew to #{@height}m tall," + 
				" and produced #{@fruit} oranges."
			else
				"This year the tree is #{height}m but is too young to bear fruit"
			end
		else
			"DEAD tree"
		end
	end
=end
	def one_year_passes 
		puts "age: #{@height}"
		if @alive
			@height = @height + 1
			@fruit = 0 # old oranges fall off
			if @height > 10 && rand(2) > 0
				# tree dies
				@alive = false
				puts 'Oh, no! The tree is too old, and has died. :('
			elsif @height > 2
				# new oranges grow
				@fruit = @height * 2
				"This year your tree grew to #{@height}m tall," + " and produced #{@fruit} oranges."
			else
				"This year your tree grew to #{@height}m tall," +
			    " but is still too young to bear fruit."
			end 
		else
			'A year later, the tree is still dead. :(' 
		end
	end

	def count_the_oranges
		if @alive
			@fruit = 0
		else
			'A dead tree has no oranges.'
		end
		
	end

	def pick_an_orange
		if @alive
			if @fruit > 0
				@fruit = @fruit - 1
				puts "That was a tasty orange!"
			else
				puts "No oranges to pick"
			end
		else
			puts 'No oranges to pick on a dead tree'	
		end		
	end

end

tree = OrangeTree.new
23.times do 
	tree.one_year_passes
end