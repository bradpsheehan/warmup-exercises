class Say

  attr_reader :number

  def initialize(number)
    @number = number
  end



  def in_english
    hundred = (number % 1000) / 100
    thousand = (number % 10000) / 1000
    million = number / 1000000
    ones_rem = number % 10
    tens_rem = number % 100


    
    words = ""
    words << "#{ones[million]} million" if million > 0
    words << "#{ones[thousand]} thousand" if thousand > 0
    words << "#{ones[hundred]} hundred" if hundred > 0
    words << "#{ones[number]}" if number < 20
    words << " #{ones[ones_rem]}" if ones_rem > 0
    words << " #{tens[tens_rem]}" if tens_rem > 0
    words
    # if number > 999_999
      # "#{ones[million]} million "
    # if number > 999 && number % 1000 != 0
    #   "#{ones[thousand]} thousand #{ones[(number / 100) % 10]} hundred #{tens[(number % 100)/10]}-#{ones[number % 10]}"
    # elsif number > 999
    #   "#{ones[thousand]} thousand"
    # elsif number > 19 && number % 10 != 0
    #   "#{ones[hundred]} hundred #{tens[(number % 100)/10]}-#{ones[number % 10]}"
    # elsif number > 19 && number % 100 != 0
    #   "#{ones[hundred]} hundred #{tens[(number % 100)/10]}"
    # elsif number > 19
    #   "#{ones[number / 100]} hundred"
    # else
    #   ones[number]
    # end
  end

  def ones
    %w(zero one two three four
     five six seven eight nine
     ten eleven twelve thirteen
     fourteen fifteen sixteen
     seventeen eighteen nineteen)
  end

  def tens
    %w(nil nil twenty thirty forty
     fifty sixty seventy eighty ninety)
  end

  

end
