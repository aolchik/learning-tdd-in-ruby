require './app/simple/fibonacci_solved.rb'
require 'test/unit'
require 'test/unit/notify'

class FibonacciTest < Test::Unit::TestCase
  include Fibonacci

  def test_positive_numbers
    test_set = [
      [0, 0],
      [1, 1],
      [2, 1],
      [3, 2]
    ]

    test_set.each do |test_case|
      assert_equal(test_case[1], fibonacci(test_case[0]),
        "Fibo(#{test_case[0]}):")
    end
  end

  def test_negative_numbers
    assert_raise (ArgumentError) { fibonacci (-1) }
  end
end