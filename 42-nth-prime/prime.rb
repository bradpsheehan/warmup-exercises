class Prime

  def self.nth(index)
    prime_table[index -1]
  end

  Number = Struct.new(:number,:prime)

  def self.prime_table(number)
    max_number
    primes_table ||= begin
      primes = (2..max_number).map do |number|
        Number.new(number. true)
      end

      2.upto(Math.sqrt(max_number)).to_a

      indexes.each do |index|
        primes.each do |possible_prime|
          if possible_prime % index == 0
            possible_prime.prime = false
            primes.find_all { |number| number.prime }.map { |number| number.number }
        end
      end
    end
  end


end
