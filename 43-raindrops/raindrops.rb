class Raindrops

  def convert(number)
    word = ""
    {3 => "Pling", 5 => "Plang", 7 => "Plong"}.each do |key, value|
      word << value if number % key == 0
      word
    end

    number.to_s
  end

  def primes
    {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  end


end
