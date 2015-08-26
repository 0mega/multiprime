require 'spec_helper'
require 'multiprime/table_generator'

describe Multiprime::TableGenerator do

	describe '#print_table' do
		subject { Multiprime::TableGenerator.new }

		it 'returns 5x5 table of numbers' do
			expected_res = "+----+----+----+----+----+-----+
|    | 2  | 3  | 5  | 7  | 11  |
+----+----+----+----+----+-----+
| 2  | 4  | 6  | 10 | 14 | 22  |
| 3  | 6  | 9  | 15 | 21 | 33  |
| 5  | 10 | 15 | 25 | 35 | 55  |
| 7  | 14 | 21 | 35 | 49 | 77  |
| 11 | 22 | 33 | 55 | 77 | 121 |
+----+----+----+----+----+-----+
"

			expect(subject.print_table [2, 3, 5, 7, 11]).to eq expected_res
		end
	end

end
