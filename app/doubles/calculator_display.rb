class CalculatorDisplay
  def initialize(calcEngine)
    @calcEngine = calcEngine
  end

  def setSeparators(thousandSeparator, decimalSeparator)
  end

  def show()
    "%0.2f" % [@calcEngine.result]
  end
end