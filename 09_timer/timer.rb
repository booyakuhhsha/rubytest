class Timer

attr_reader :seconds
attr_reader :time_string
	
	def seconds=(seconds)
		hours = seconds/3600
		minutes = (seconds - hours*3600)/60
		seconds = seconds - hours*3600 - minutes*60
		@time_string = stringhours(hours) + ":" + stringminutes(minutes) + ":" + stringseconds(seconds)
	end

	def initialize
		@seconds = 0
	end

	def stringseconds(x)
		if x < 10
			string_seconds = "0#{x.to_s}"
		else
			string_seconds = x.to_s
		end		
	end

	def stringminutes(x)
		if x < 1
			string_minutes = "00"
		elsif x < 10
			string_minutes = "0#{x.to_s}"
		else
			string_minutes = x.to_s
		end
	end

	def stringhours(x)
		if x < 1
			string_hours = "00"
		elsif x < 10
			string_hours = "0#{x.to_s}"
		else
			string_hours = x.to_s
		end
	end
end