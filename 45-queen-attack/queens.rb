class Queens

  attr_reader :white, :black

  def initialize(position={ white: [0, 3], black: [7, 3] })
    @white = position[:white]
    @black = position[:black]
    raise ArgumentError if @white == @black
  end

  def to_s
    " O O O O O O O O
      O O O O O O O O
      O O O O W O O O
      O O O O O O O O
      O O O O O O O O
      O O O O O O O O
      O O O O O O B O
      O O O O O O O O"
    
  end



end
