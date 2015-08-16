$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'multiprime'

def is_prime? number
	test_up_to = Integer(Math.sqrt(number).floor)
	(2..test_up_to).each do |divisor|
		return false if (number % divisor) == 0
	end

	true
end
