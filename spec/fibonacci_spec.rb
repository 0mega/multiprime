require 'spec_helper'
require 'multiprime/fibonacci_gen'

describe FibonacciGen do

	describe '.get_consecutive_fib' do
		subject { FibonacciGen.instance.get_consecutive_fib number }
		context 'when given 10' do
			let ( :number ) { 10 }
			let ( :result ) { [1, 1, 2, 3, 5, 8, 13, 21, 34, 55] }
			it 'returns an array of fib numbers' do
				expect(subject).to eq result
			end
		end

		context 'when given 5' do
			let ( :number ) { 5 }
			let ( :result ) { [1, 1, 2, 3, 5] }
			it 'returns an array of fib numbers' do
				expect(subject).to eq result
			end
		end

		context 'when given -1' do
			let ( :number ) { -1 }
			let ( :result ) { [] }
			it 'returns an empty array' do
				expect(subject).to eq result
			end
		end
	end
end
