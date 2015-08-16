require 'spec_helper'
require './lib/multiprime/prime_gen'

describe PrimeGen do
	it 'should return exact number of primes' do
		@primes = PrimeGen.instance.get_consecutive_primes 10
		expect(@primes.length).to eq 10
	end

	it 'should return empty array for 0' do
		@primes = PrimeGen.instance.get_consecutive_primes 0
		expect(@primes).to be_empty
	end

	it 'should return empty array for -1' do
		@primes = PrimeGen.instance.get_consecutive_primes -1
		expect(@primes).to be_empty
	end

	it 'should contain prime numbers only' do
		@primes = PrimeGen.instance.get_consecutive_primes 20
		(0..@primes.length-1).each do |idx|
			expect(is_prime? @primes[idx]).to be true
		end
	end
end
