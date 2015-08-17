require 'multiprime/prime_gen'
require 'text-table'

module Multiprime
	class TableGenerator
	  def self.print_table prime_count
	    primes = PrimeGen.instance.get_consecutive_primes prime_count

			table = Text::Table.new
			table.head = primes.unshift("")
			(primes.length-1).times do |idx|
				row = []
				primes.each_with_index do |p, j|
					if (p == "")
						row << primes[idx+1]
					else
						row << row[0] * p
					end

				end
				table.rows << row
			end
			puts table
	  end
	end
end
