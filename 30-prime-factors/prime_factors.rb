class PrimeFactors

  def self.for(number)
    find_primes_of(number)
  end

  def find_primes_of(number)
    # if number is a prime number then the prime factor(s) of that number is the number itself
    # if the number is not prime then try deviding by 2
  end



end

#   class Sieve

#   attr_reader :range

#   def initialize(input)
#     @range = (2..input).to_a
#   end

#   def primes
#     range.each do |digit|
#       range.reject! {|num| (num / digit != 1) && (num % digit == 0) }
#     end
#     range
#   end

# end
