class Timer
attr_reader :seconds
attr_reader :time_string
	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		if seconds < 10
			seconds.to_s
			string_seconds = "0#{seconds}"
			string_minutes = "00"
			string_hours = "00"
		elsif seconds < 60
			string_seconds = seconds.to_s
			string_minutes = "00"
			string_hours = "00"
		elsif seconds.between?(60,3600)
			minutes = seconds/60
			seconds = seconds%60
			if minutes < 10
				string_minutes = "0#{minutes.to_s}"
				if seconds < 10
					seconds.to_s
					string_seconds = "0#{seconds}"
					string_hours = "00"
				elsif seconds < 60
					string_seconds = seconds.to_s
					string_hours = "00"
				end
			end
		else
			hours = (seconds/3600)
			if hours < 10
				string_hours = "0#{hours.to_s}"
			else
				string_hours = hours.to_s
			end
			minutes = ((seconds-3600)/60)
			if minutes < 10
				string_minutes = "0#{minutes.to_s}"
			else
				string_minutes = minutes.to_s
			end
			seconds = (seconds - hours*3600 - minutes*60)
			string_seconds = seconds.to_s
		end

		@time_string = "#{string_hours}:#{string_minutes}:#{string_seconds}"
	end
end