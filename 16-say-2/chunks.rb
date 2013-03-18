class Array
  def groups_of(number)

    number_of_groups = self.length / number
    remainder = self.length % number

    if remainder > 0
      number_of_groups = number_of_groups + 1
    end

    number_of_groups.times.collect do |index|
      self[index * number, number]
    end

  end
end

# class Array
#   def groups_of(number)

#     copy_of_self = dup

#     # how many times do I do that?

#     groups = []

#     while !copy_of_self.empty?
#       groups << copy_of_self.shift(number)
#     end

#     groups


#   end
# end

class Chunks

  attr_reader :raw_number

  def initialize(initial_value)
    @raw_number = initial_value
  end

  def num_parse

    number = raw_number.to_s.rjust(12,"0")

    number_groups = number.split("").each_slice(3)

    number_groups.collect { |number_group| number_group.join.to_i }

    # [ 
    #   characters[0,3].join.to_i,
    #   characters[3,3].join.to_i,
    #   characters[6,3].join.to_i,
    #   characters[9,3].join.to_i
    # ]

  end

end
