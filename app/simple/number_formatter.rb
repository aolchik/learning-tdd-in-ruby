
module NumberFormatter
  def number_formatter(number, thousandSeparator, decimalSeparator)
    number.to_s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(thousandSeparator).reverse
  end
end
