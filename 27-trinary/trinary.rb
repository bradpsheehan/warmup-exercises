class Trinary

  attr_reader :trinary

  def initialize(input)
    @trinary = input.split("")
  end

  def to_decimal
    variable = trinary.collect do |i|
      i.to_i
    end
    variable.reverse
  end

end
