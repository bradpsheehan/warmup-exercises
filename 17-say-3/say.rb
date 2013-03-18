class Say

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def in_english

    if number / 10**6 > 0
      millions = number / 10**6
      remainder = number % 10**6
      "#{millions} million #{remainder}".gsub("0","").strip
    elsif number / 10**3 > 0
      remainder = number % 10**3
      "#{number / 10**3} thousand #{remainder}".gsub("0","").strip
    else
      number.to_s
    end
  end




end
