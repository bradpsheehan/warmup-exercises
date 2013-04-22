  class Sieve

  attr_reader :range

  def initialize(input)
    @range = (2..input).to_a
  end

  def primes
    range.each do |digit|
      range.reject! {|num| (num / digit != 1) && (num % digit == 0) }
    end
    range
  end

end


################## Jeff's Solution ##################

# class Sieve
#   attr_reader :values

#   def initialize(max)
#     @values = (2..max).to_a
#   end

#   def primes
#     values.each do |value|
#       remove_multiples_of(value)
#     end
#     return values
#   end

#   def remove_multiples_of(value)
#     @values = values.select{|v| (v % value != 0) || v == value}
#   end

# end
