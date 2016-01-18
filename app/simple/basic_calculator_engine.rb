require 'byebug'

class BasicCalculatorEngine
  attr_reader :result

  def initialize()
    @result = 0
  end

  def add(num)
    @result += num
  end

  def enter(num)
    @result = num
  end

  def multiply(num)
    @result *= num
  end
end
