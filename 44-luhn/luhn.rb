class Luhn

  attr_reader :numbers

  def initialize(number)
    @numbers = number.to_s.split("").reverse
  end

  def check_digit
    numbers[0].to_i
  end

  def addends
    a_bunch_of_numbers = []
    numbers.each_with_index do |addend, index|
      a_bunch_of_numbers << addend.to_i * 2 if index % 2 != 0
    end
  end


end
