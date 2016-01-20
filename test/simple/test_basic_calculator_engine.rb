require './app/simple/basic_calculator_engine'

require 'test/unit'
require 'test/unit/notify'

class BasicCalculatorEngineTest < Test::Unit::TestCase
  def setup()
    @calc = BasicCalculatorEngine.new()
  end

  def test_accepts_new_number()
      # Intent revealing name

      # Arrange
      num = 25.35

      # Act, Assert
      assert_equal(num, @calc.enter(num), "enter:")
        # message to easily find where the test breaks

      assert_equal(num, @calc.result(), "result:")

      # Reset
  end

  def test_should_add()
    # BDD style name
    numToAdd1 = 33.23
    numToAdd2 = 21.2134

    assert_equal(numToAdd1, @calc.add(numToAdd1), 
      "starting from zero")
    assert_equal(numToAdd1 + numToAdd2, @calc.add(numToAdd2),
      "cumulative")
    assert_equal(numToAdd1 + numToAdd2, @calc.result,
      "stores result")
  end

  def test_multiplies()
    num1 = 3
    num2 = 6

    @calc.enter(num1)
    
    assert_equal(num1 * num2, @calc.multiply(num2),
      "returns result")
    assert_equal(num1 * num2, @calc.result, 
      "stores result")
  end

  
  def subtracts
  end

  def clears 
  end

  def divides
  end

  def raises_exception_on_division_by_zero
  end
  

end