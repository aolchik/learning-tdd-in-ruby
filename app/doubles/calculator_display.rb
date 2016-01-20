
class CalculatorDisplay

  attr_accessor :thousandSeparator, :decimalSeparator

  def initialize(calcEngine)
    @calcEngine = calcEngine
    @thousandSeparator = ','
    @decimalSeparator = '.'
  end

  def show()
    withTwoDecimals = sprintf("%.2f", @calcEngine.result)
    withRightDecimalSeparator = withTwoDecimals.gsub(/\./,@decimalSeparator)
    withRightDecimalSeparator.reverse.gsub(/(\d{3})(?=\d)/, "\\1#{@thousandSeparator}").reverse
  end
end


