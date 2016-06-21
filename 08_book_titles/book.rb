class Book
attr_reader :title
	def title=(new_title)
		littlewords = %w{the and an of in a}
		string = new_title.split(' ').map do |word|
			if littlewords.include? word
				word
			else 
				word.capitalize
			end
		end.join(' ')
		@title = string.slice(0,1).capitalize + string.slice(1..-1)
	end
end

