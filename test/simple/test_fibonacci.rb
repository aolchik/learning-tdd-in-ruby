require './app/simple/fibonacci.rb'
require 'test/unit'
require 'test/unit/notify'

class FibonacciTest < Test::Unit::TestCase
  include Fibonacci

  def test_positive_numbers
    testCases = [
      [0, 0],
      [1, 1],
      [2, 1],
      [3, 2]
    ]
    
    testCases.each do |testCase|
      assert_equal(testCase[1], 
        fibonacci(testCase[0]),
        "fibonacci(#{testCase[0]})")
    end
  end
end