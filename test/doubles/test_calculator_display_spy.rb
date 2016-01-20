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

    # Code above was extracted to a single method
    assert_alternate_separator_behaviour(
        "single thousand separator", 1000, 
        ".", ",", "1.000,00")

    assert_alternate_separator_behaviour(
        "multiple thousand separators", 
            1000000000, ".", ",", 
            "1.000.000.000,00");

    assert_alternate_separator_behaviour(
        "thousand separator on negative numbers", 
            -45000, ".", ",", "-45.000,00");

  end

  private

  def assert_alternate_separator_behaviour(msg, 
    resultToInject, thousandSeparator, decimalSeparator, 
    expectedOutput)

    # Arrange
    mockedCalculator = mock()
    mockedCalculator.expects(:result).returns(resultToInject)
    display = CalculatorDisplay.new(mockedCalculator)

    display.thousandSeparator= "."
    display.decimalSeparator= ","

    # Act
    actualOutput = display.show()

    # Assert
    assert_equal(expectedOutput, actualOutput, msg)
  end


end
