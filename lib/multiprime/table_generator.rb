require 'text-table'

module Multiprime
	class TableGenerator
	  def print_table array
			table = Text::Table.new
			table.head = array.unshift("")
			(array.length-1).times do |idx|
				row = []
				array.each_with_index do |p, j|
					if (p == "")
						row << array[idx+1]
					else
						row << row[0] * p
					end

				end
				table.rows << row
			end
			table.to_s
	  end
	end
end
