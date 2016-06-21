def ftoc(temp)
	temp = 0.5556*(temp-32)	
	temp = temp.to_i	
end

def ctof(temp)
	temp = temp*1.8+32
	temp = temp.to_f
end