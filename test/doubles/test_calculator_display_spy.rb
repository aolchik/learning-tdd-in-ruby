require './app/doubles/calculator_display'

require 'test/unit'
require 'test/unit/notify'
require 'mocha/test_unit'

class CalculatorDisplaySpyTest < Test::Unit::TestCase

  def test_shows_default_separator()
    # Arrange
    resultToInject = 100
    expectedOutput = "100.00"

    mockedCalculator = mock()
    mockedCalculator.expects(:result).returns(resultToInject)
    display = CalculatorDisplay.new(mockedCalculator)

    # Act
    actualOutput = display.show()

    # Assert
    assert_equal(expectedOutput, actualOutput, 
      "standard decimal separator")
  end

  def test_showsAlternateSeparators()
    # How to write a test when we still don't 
    # know the underlying technology enough?
    # spike! (i.e. using a separate folder or 
    # using a new branch)

    # Arrange
    # This code could be extracted to the 
    # approach below.
    # It is being duplicated here to facilitate 
    # understanding.

    resultToInject = 100.0;
    expectedOutput = "100,00"

    mockedCalculator = mock()
    mockedCalculator.expects(:result).returns(resultToInject)
    display = CalculatorDisplay.new(mockedCalculator)

    display.thousandSeparator= "."
    display.decimalSeparator= ","

    # Act
    actualOutput = display.show()

    # Assert
    assert_equal(expectedOutput, actualOutput,
      "decimal separator change")
  end



end
