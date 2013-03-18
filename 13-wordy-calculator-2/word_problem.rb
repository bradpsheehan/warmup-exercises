class WordProblem

  attr_reader :equation

  def initialize(equation)
    @equation = equation.split
  end

  def answer
    calculate
  end

  def calculate
    first_addend = equation[2].to_i
    second_addend = equation[4].to_i
    first_addend + second_addend
  end

end

## Jeff's Answer ##

# class WordProblem
#   attr_reader :equation

#   def initialize(equation)
#     @equation = equation
#   end

#   def answer
#     calculate
#   end

#   def calculate
#     # equation = 'What is 1 plus 1?'
#     matches = equation.scan /.* (-?\d+) (plus|minus|multiplied|divided)(?: by)? (-?\d+)/
#     first, operator, second = matches.first
#     op = operator_for(operator)
#     (first.to_i).send(op, second.to_i)
#   end

#   def operator_for(input)
#     if input == "plus"
#       :+
#     elsif input == "multiplied"
#       :*
#     elsif input == "divided"
#       :/
#     elsif input == "minus"
#       :-
#     else
#       raise ArgumentError
#     end
#   end
# end
