class Say

  attr_reader :number
<<<<<<< HEAD

=======
>>>>>>> 2235c334c938f047322006a0c956680cc4571ce8
  def initialize(number)
    @number = number
  end

  def in_english
<<<<<<< HEAD

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




=======
    unless number.between?(0, 1_000_000_000_000-1)
      raise ArgumentError.new "can't do that"
    end

    return "0" if number == 0

    s = ""
    s << "#{billions} billion" if billions > 0
    s << " #{millions} million" if millions > 0
    s << " #{thousands} thousand" if thousands > 0
    s << " #{hundreds}" if hundreds > 0
    s.strip
  end

  def hundreds
    @hundreds ||= number % 1_000
  end

  def thousands
    @thousand ||= number % 1_000_000 / 1000
  end

  def millions
    @millions ||= number % 1_000_000_000 / 1_000_000
  end

  def billions
    @billions ||= number / 1_000_000_000
  end
>>>>>>> 2235c334c938f047322006a0c956680cc4571ce8
end
