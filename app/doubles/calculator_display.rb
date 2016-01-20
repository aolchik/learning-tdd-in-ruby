
require 'action_view'

class CalculatorDisplay
  include ActionView::Helpers::NumberHelper

  attr_accessor :thousandSeparator, :decimalSeparator

  def initialize(calcEngine)
    @calcEngine = calcEngine
    @thousandSeparator = ','
    @decimalSeparator = '.'
  end

  # WIP
  def show()
    number_with_precision(@calcEngine.result, precision: 2)
    # number_to_human(@calcEngine.result, 
    #   delimiter: @thousandSeparator, 
    #   separator: @decimalSeparator,
    #   precision: 2,
    #   significant: false)
    # Previous implementation!
    #{}"%0.2f" % [@calcEngine.result]
  end
end

