require "optparse"
require "ostruct"
require "multiprime/version"
require "multiprime/table_generator"
require 'multiprime/prime_gen'
require 'multiprime/fibonacci_gen'



module Multiprime
  # Simple parser to match the command
  # Using a gem like Commander would be an overkill
  class CommandParser
    def parse_args
      options = {}
      optparse = OptionParser.new do |opt|

        opt.on('--alg A', String, 'Specify desired algorithm include in multiplication table' ) do |n|
          options[:alg] = n
        end

        opt.on('--count N', Integer, 'Specify desired number of primes to include in multiplication table' ) do |n|
          options[:count] = n
        end
      end.parse!

      if options[:count].nil?
        puts "Usage: multiprime --alg [fib|prime] --count [number_of_primes]"
        return
      end

      if (options[:alg] == "fib")
        array = Multiprime::FibonacciGen.instance.get_consecutive_fib options[:count]
      else
        array = Multiprime::PrimeGen.instance.get_consecutive_primes options[:count]
      end


      table_gen = TableGenerator.new
      result = table_gen.print_table array

      puts result
    end
  end
end
