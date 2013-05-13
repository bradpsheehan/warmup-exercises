class Squares

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sums
    sum = 0
    (1..@number).each { |a| sum += a }
    sum**2
  end

  def sum_of_squares
    variables = (1..number).collect{ |a| a**2 }
    sum = 0
    variables.each { |variable| sum += variable }
    sum
  end

  def difference
    square_of_sums - sum_of_squares
  end


end
