require 'singleton'

module Multiprime
	class FibonacciGen
		include Singleton

		def get_consecutive_fib fib_c
			return [] if fib_c <= 0

			@fib_array = [1, 1]

			(2..(fib_c - 1)).each do |idx|
					@fib_array << @fib_array[idx - 2] + @fib_array[idx - 1]
			end

			@fib_array
		end
	end
end
