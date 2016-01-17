require './app/simple/fibonacci.rb'
require 'test/unit'
require 'test/unit/notify'

class FibonacciTest < Test::Unit::TestCase
  include Fibonacci

  def test_pending
    assert(true)
  end
end