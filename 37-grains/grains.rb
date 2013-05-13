class Grains

  def square(number)
    2**(number - 1)
  end

  def total
    total = 0
    (1..64).each do |number|
      var = 2**(number-1)
      total << var
    end
    total.sum
  end

end
