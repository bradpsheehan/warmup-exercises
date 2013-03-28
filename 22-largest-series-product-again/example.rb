class Series
<<<<<<< HEAD
    attr_reader :digits
  def initialize(input)
    @digits = input.split("").collect{|each_number|each_number.to_i}
  end

  def slices(input)
    @slices = []
    digits.count.times do |i|
      @slices << digits[i...input + i]
    end
    @slices.reject{|set| set.count != input}
  end

  def largest_product(input)
    raise ArgumentError if input > digits.count
    slices(input).collect do |set|
      set.inject(:*)
    end.max
  end


end

# class Series
#   attr_reader :digits
#   def initialize(input)
#     @digits = input.split("").map{|i| i.to_i}
#   end
 
#   def slices(input)
#     slices = []
#     digits.count.times do |i|
#       slices << digits[i...i+input]
#     end
#     slices.reject{|i|i.count != input}
#   end
 
#   def largest_product(input)
#     raise ArgumentError if input > digits.count
#     slices(input).collect do |set|
#       set.inject(:*)
#     end.max
#   end
 
# end
=======

  attr_reader :digits
  def initialize(numeric_string)
    @digits = convert_to_digits(numeric_string)
  end

  def largest_product(length)
    if length > digits.length
      raise ArgumentError.new('Not enough digits')
    end

    products = []
    slices(length).each do |slice|
      products << slice.inject(1) do |product, n|
        product * n
      end
    end
    products.sort.last
  end

  def slices(length)
    result = []
    i = -1
    begin
      i += 1
      i2 = i + length - 1
      result << digits[i..i2]
    end while i2 < digits.size - 1
    result
  end

  private

  def convert_to_digits(s)
    s.chars.to_a.map(&:to_i)
  end
end

>>>>>>> dcb7aec1a6c3148848b616dd33371070abb3ee84
