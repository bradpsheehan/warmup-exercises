require 'time'

class Gigagsecond

  def one_gigagsecond
    1,000,000,000
  end

end

  birthday = Time.parse("4/11/1988 8:00 UTC")
  g = Gigagsecond.new(1)
  puts g.after(birthday)

  birth_in_seconds = Date.new(*birthdate).to_time.to_i

#   require 'time'
 
# class Gigasecond
#   attr_reader :quantity
 
#   IN_SECONDS = 1_000_000_000
 
#   def initialize(quantity)
#     @quantity = quantity
#   end
 
#   def to_i
#     quantity * IN_SECONDS
#   end
 
#   def after(start)
#     Time.at(start.to_i + self.to_i)
#   end
# end
 
# birthday = Time.parse("12/02/1981 10:00:00 UTC")
# g = Gigasecond.new(1)
# puts g.after(birthday)

