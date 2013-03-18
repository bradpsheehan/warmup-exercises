class Say

  attr_reader :value
  def initialize(value)
    @value = value
  end

  def in_english
    guard_range
    say_small_number || say_big_number
  end

  private

  def say_small_number
    small_numbers[value]
  end

  def say_big_number
    s = decades[tens]
    unless ones.zero?
      s << "-#{small_numbers[ones]}"
    end
    s
  end

  def guard_range
    unless in_range?
      message = 'Number must be between 0 and 99, inclusive.'
      raise ArgumentError.new(message)
    end
  end

  def in_range?
    value >= 0 && value < 100
  end

  def tens
    @tens ||= value / 10
  end

  def ones
    @ones ||= value % 10
  end

  def small_numbers
    %w(zero one two three four five
       six seven eight nine ten
       eleven twelve thirteen fourteen fifteen
       sixteen seventeen eighteen nineteen)
  end

  def decades
    [nil, nil] +
    %w(twenty thirty forty fifty
       sixty seventy eighty ninety)
  end

end

require 'minitest/autorun'

class SayTest < MiniTest::Unit::TestCase
  def test_zero
    assert_equal 'zero', Say.new(0).in_english
  end

  def test_one
    assert_equal 'one', Say.new(1).in_english
  end

  def test_fourteen
    # If your algorithm says 'ten-four'
    # you're doing it wrong
    assert_equal 'fourteen', Say.new(14).in_english
  end

  def test_twenty
    # This really shouldn't be twenty-zero
    assert_equal 'twenty', Say.new(20).in_english
  end

  def test_twenty_two
    assert_equal 'twenty-two', Say.new(22).in_english
  end

  def test_lower_bound
    assert_raises ArgumentError do
      Say.new(-1).in_english
    end
  end

  def test_upper_bound
    assert_raises ArgumentError do
      Say.new(100).in_english
    end
  end
end



# class Say
 
#   def initialize(number)
#     @number = number
#   end
 
#   def english_numbers
#     {
#       0 => "zero",
#       1 => "one",
#       2 => "two",
#       3 => "three",
#       4 => "four",
#       5 => "five",
#       6 => "six",
#       7 => "seven",
#       8 => "eight",
#       9 => "nine",
#       10 => "ten",
#       11 => "eleven",
#       12 => "twelve",
#       13 => "thirteen",
#       14 => "fourteen",
#       15 => "fifteen",
#       16 => "sixteen",
#       17 => "seventeen",
#       18 => "eighteen",
#       19 => "nineteen",
#       20 => "twenty"
#     }
 
#   end
 
#   def ones_place
#     {
#       1 => "one",
#       2 => "two",
#       3 => "three",
#       4 => "four",
#       5 => "five",
#       6 => "six",
#       7 => "seven",
#       8 => "eight",
#       9 => "nine"
#     }
#   end
 
#   def tens_place
#     { 2 => "twenty",
#       3 => "thirty",
#       4 => "forty",
#       5 => "fifty",
#       6 => "sixty",
#       7 => "seventy",
#       8 => "eighty",
#       9 => "ninety"
#     }
#   end
 
#   def do_some_work(number)
#     tens_position = number / 10 
#     ones_position = number % 10
#     tens_place_word = tens_place[tens_position]
#     one_place_word = ones_place[ones_position]
 
#     if ones_position == 0
#       tens_place_word
#     else
#       "#{tens_place_word}-#{one_place_word}"
#     end
#   end
 
#   def in_english
    
#     if english_numbers.key? @number
#       # if the number is in our english number list then return it to the user
#       english_numbers[@number]
#     else
#       # otherwise we need to create the number
#       do_some_work(@number)
#     end
    
#   end
 
# end
