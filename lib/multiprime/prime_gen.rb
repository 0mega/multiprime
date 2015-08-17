# Prime numbers generator
# As an optimisation for time and space, the Segmented Sieve of Eratosthenes
# is used to compute and store the primes (source: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes)
# Also as primes never change we can cache already calculated ones
require 'singleton'

module Multiprime
	class PrimeGen
		include Singleton

		def initialize
			@primes = []
		end

		def get_consecutive_primes p_count
			return [] if p_count < 1
			return @primes[0..p_count-1] if @primes.length >= p_count

			attempt = 1
			while @primes.length < p_count do
				gen_primes_up_to(10**attempt)
				attempt += 1
			end

			return @primes[0..p_count-1]
		end

	private
		def gen_primes_up_to number
			@sieve = Array.new(number, true)
			@sieve[0] = @sieve[1] = false
			max_test = Integer(Math.sqrt(number).round)

			(2..max_test).each do |i|
				if(@sieve[i])
					(i**2..number).step(i).each do |j|
						@sieve[j] = false
					end
				end
			end

			@primes = []
			(2..number).each do |k|
				@primes.push k if @sieve[k]
			end

			nil
		end
	end
end
