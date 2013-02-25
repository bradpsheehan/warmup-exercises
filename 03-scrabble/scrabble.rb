<<<<<<< HEAD
class SCrabble

  def initialize(word)
    @word = word
    @score = score
  end

  def score
    if letter == [A, E, I, O, U, L, N, R, S, T]
      @score  = 1
    elsif letter == [D, G]
      @score = 2
    elsif letter == [B, C, M, P]
      @score = 3
    elsif letter == [F, H, V, W, Y]
      @score = 4
    elsif letter == [K]
      @score = 5
    elsif letter == [J, X]
      @score = 8
    elsif letter == [Q, Z]
      @score = 10
  end

  def word
  end

end

Scrabble.score("cabbage")


# class Scrabble
#   VALUES = { 
#       "A, E, I, O, U, L, N, R, S, T" => 1,
#       "D, G" => 2,
#       "B, C, M, P" => 3,
#       "F, H, V, W, Y" => 4,
#       "K" => 5,
#       "J, X" => 8,
#       "Q, Z" => 10
#   }

#   def self.score(input)
#     input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
#   end

#   def self.lookup(letter)
#     VALUES.find{|key, value| key.include?(letter)}[1]
#   end
# end
=======
class Scrabble
  VALUES = { 
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10
  }

  def self.score(input)
    input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
  end

  def self.lookup(letter)
    VALUES.find{|key, value| key.include?(letter)}[1]
  end
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
