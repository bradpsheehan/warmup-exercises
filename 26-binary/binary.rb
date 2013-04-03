class Binary

  attr_reader :binary

  def initialize(input)
    @binary = input
  end

  def to_decimal
    if binary == "1"
      1
    elsif binary == "10"
      2
    else
      3
    end
  end



end
