class Hexadecimal

  attr_reader :value

  def initialize(input)
    @value = input
  end

  def to_decimal
    if value == "10"
      16
    else
      value_for_symbol(value)
    end
  end

private
  def value_for_symbol(symbol)
    case symbol.upcase
    when "0".."9" then symbol.to_i
    when "A" then 10
    when "B" then 11
    when "C" then 12
    when "D" then 13
    when "E" then 14
    when "F" then 15
    else
      raise "Invalid Symbol for Hex"
    end
  end

end
