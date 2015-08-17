require 'multiprime/prime_gen'

module Multiprime
	class TableGenerator
	  def self.print_table prime_count
	    primes = PrimeGen.instance.get_consecutive_primes prime_count
	    puts "#{primes}"
	  end
	end
end
