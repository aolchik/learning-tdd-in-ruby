#
#  In mathematics, the Fibonacci numbers or Fibonacci series 
#  or Fibonacci sequence are the numbers in the following 
#  integer sequence:
#  0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144,...; 
#  By definition, the first two numbers in the Fibonacci 
#  sequence are 0 and 1, and each subsequent number is the 
#  sum of the previous two.
#
#  Implement a static method int calc(int n), that returns
#  the nth Fibonacci number.
#  i.e fibonacci(0) -> 0
#    fibonacci(1) -> 1
#    fibonacci(2) -> 1
#    ... 
#

module Fibonacci

  def fibonacci(num)
    if(num > 2)
      fibonacci(num-1) + fibonacci(num-2)
    elsif(num >= 1)
      1
    else
      0
    end
  end

end