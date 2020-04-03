class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = @seconds/(60*60)
		remainder = @seconds%(60*60)
		minutesAfter = remainder/60
		secondsAfter = remainder % 60
		sprintf("%02d:%02d:%02d", hours, minutesAfter, secondsAfter)
	end
end
