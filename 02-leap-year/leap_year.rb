class Year
  def initialize(input)
    @value = input
  end

  def leap?
    divisible_by_4   = (@value % 4 == 0)
    divisible_by_100 = (@value % 100 == 0)
    divisible_by_400 = (@value % 400 == 0)

    divisible_by_4 && (! divisible_by_100 || divisible_by_400)
  end
end
