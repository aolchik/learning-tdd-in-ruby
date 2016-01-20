
require 'action_view'

class CalculatorDisplay
  include ActionView::Helpers::NumberHelper

  attr_accessor :thousandSeparator, :decimalSeparator

  def initialize(calcEngine)
    @calcEngine = calcEngine
    @thousandSeparator = ','
    @decimalSeparator = '.'
  end

  def show()
    number_to_human(@calcEngine.result, 
      delimiter: @thousandSeparator, 
      separator: @decimalSeparator,
      precision: 2,
      strip_insignificant_zeros: false,
      significant: false)
  end
end

