require "optparse"
require "ostruct"
require "multiprime/version"
require "multiprime/table_generator"



module Multiprime
  # Simple parser to match the command
  # Using a gem like Commander would be an overkill
  class CommandParser
    def parse_args
      options = {}
      optparse = OptionParser.new do |opt|

        opt.on('--count N', Integer, 'Specify desired number of primes to include in multiplication table' ) do |n|
          options[:count] = n
        end
      end.parse!

      if options[:count].nil?
        puts "Usage: multiprime --count [number_of_primes]"
        return
      end

      TableGenerator.print_table options[:count]
    end
  end
end
