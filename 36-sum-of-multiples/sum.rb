class SumOfMultiples

  def self.multiples_upto(multiple,input)
    all_multiples = []
    current_multiple = multiple

    while input > current_multiple
      current_multiple += multiple
    end
    all_multiples
  end

  def self.to(multiples)
    total = 0

    current_multiple = 3

    while input > current_multiple
      total += multiple
    end

    total
  end


end
