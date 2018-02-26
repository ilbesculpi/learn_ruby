class Book
	# write your code here
	attr_accessor :title

	def title=(value)
		conjunctions = ["and", "or", "on", "in", "the", "a", "an", "of"]
		words = value.split(" ").map { |x|
			if conjunctions.include?(x)
				x
			else
				x.capitalize
			end
		}
		words[0].capitalize!
  		@title = words.join(" ")
	end

end
