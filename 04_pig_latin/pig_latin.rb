def translate(s)
vowels = ["a","e","i","o","u"]
c = "bcdfghjklmnpqrstvwxyz"
consonants = c.split('')
s = s.split(' ')
s.map do |s|
	if vowels.include? s.slice(0)
		s = s + "ay"
	elsif (s.slice(0) + s.slice(1)) == "qu"
		s = s.slice(2..-1) + s.slice(0) + s.slice(1) + "ay"
		
	elsif consonants.include? (s.slice(0) && s.slice(1))
		if consonants.include? s.slice(2)
			s = s.slice(3..-1) + s.slice(0) + s.slice(1) + s.slice(2) + "ay"
		elsif (s.slice(1) + s.slice(2)) == "qu"
			s = s.slice(3..-1) + s.slice(0) + s.slice(1) + s.slice(2) + "ay"
		else
			s = s.slice(2..-1) + s.slice(0) + s.slice(1) + "ay"
		end
	elsif consonants.include? s.slice(0)
		s = s.slice(1..-1) + s.slice(0) + "ay"
	end
end.join(' ')


end