class Crypto

  attr_reader :input

  def initialize(input)
    @input = input.downcase.gsub(/[^\d\w]/, "")
  end

  def normalize_plaintext
    input
  end

  def size
    Math.sqrt(input.length)
  end

end
