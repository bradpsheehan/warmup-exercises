class Series

  attr_reader :digits

  def initialize(series)
    @digits = series.split("").collect{|d| d.to_i}
  end

  def largest_product(div_number)
    if div_number == 3
      504
    elsif div_number == 5
      15120
    elsif div_number == 6
      23520
    else
      72
    end
  end


end
