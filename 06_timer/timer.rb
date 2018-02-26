class Timer
  #write your code here

  	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hh = ((@seconds / 3600) % 60).to_s.rjust(2, "0")
		mm = ((@seconds / 60) % 60).to_s.rjust(2, "0")
		ss = (@seconds % 60).to_s.rjust(2, "0")
		arr = [hh, mm, ss]
		return arr.join(":")
	end

end
