require './app/simple/number_formatter'

require 'test/unit'
require 'test/unit/notify'

# @WIP: Alternate implementation
class NumberFormatterTest < Test::Unit::TestCase
  include NumberFormatter
  def test_thousand_delimiter_on_nondecimal_numbers()
    thousandSeparator = '#'
    decimalSeparator = '.'
    testCases = [
      [100, "100"]
    ]

    testCases.each do |testCase|
      assert_equal(testCase[1],
        number_formatter(testCase[0], 
          thousandSeparator, decimalSeparator))
    end
  end

end