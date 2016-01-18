require './app/doubles/calculator_display'

require 'rspec/mocks'

require 'test/unit'
require 'test/unit/notify'


class CalculatorDisplaySpyTest < Test::Unit::TestCase
  include RSpec::Mocks::ExampleMethods

  def test_shows_default_separator()
    pend()
    # How to write a test when we still don't 
    # know the underlying technology enough?
    # spike! (i.e. using a separate folder or 
    # using a new branch)

    # Arrange
    resultToInject = 100
    expectedOutput = "100.00"

    mockedCalculator = double('BasicCalculatorEngine')
    display = CalculatorDisplay.new(mockedCalculator)

    # Act
    actual = display.show()

    # Assert
    assert_equal(expected, actual, 
      "standard decimal separator")
  end

end
