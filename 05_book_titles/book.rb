class Book
	attr_reader :title

	def title=(new_title)
		words = new_title.split(" ").map do |word|
			if %w(and over the an a in of).include?(word)
				word
			else
				word.capitalize
			end
		end
		words.first.capitalize!
		@title = words.join(" ")
	end

end
