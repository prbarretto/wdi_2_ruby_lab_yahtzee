require 'pry'

class YahtzeeRoll

	attr_accessor :roll

	def initialize(roll)
		# binding.pry

		@roll = roll



	end

	def valid_length?
		raise 'Please make a valid roll' unless @roll.length == 5
	end

	# def valid_nums?
	# 	#binding.pry
	# 	raise 'Please make a valid roll' unless @roll.each { |num| return true if num < 7 }
	# end

	# def ones
	# 	ones = 0
	# 	@roll.each do |num|
	# 		if num == 1
	# 			ones +=1
	# 		end
	# 	end
	# 	ones
	# end

	def singles(number)
		count = 0
		@roll.each do |num|
			if num == number
				count += number
			end
		end
		count
	end

	def pairs
		pairs = @roll.uniq
		if pairs.count == 5
			return 0
		else
			pairs.max * 2
		end
	end

	def three_of_a_kind
		counts = Hash.new(0)
		tally = @roll.each {|num| counts[num] += 1 }
		counts.each do |key , value|
			if value >= 3
				key * 3
			else
				return 0
			end
		end
	end

	def four_of_a_kind

	end



end
