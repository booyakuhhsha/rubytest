def echo(string)
	string.to_s
end

def shout(string)
	string.to_s
	string.upcase
end

def repeat(string,n = 2)
	string.to_s
	string = [string] * n  * ' '
end

def start_of_word(string,n)
result = []	
	for i in 0..(n-1)
		letter = string[i]
		result << letter
	end
result.join	
end

def first_word(string)
	result = string.split(" ")
	result[0].to_s
end

def titleize(string)
	array =[]
	array = string.split(' ')
	n = array.length
	
		string = array.map do |word|
			if word.length > 2 && word != "and" && word != "the" && word != "over"
			word.capitalize
			else
			word	
			end
		end.join(' ')
		final = string.slice(0,1).capitalize + string.slice(1..-1)
end


