class Robot

  def name
    @name ||= RobotNamer
  end

  def reset
    @name = nil
  end

end

module RobotNamer
  def self.generate
    Array.new(6){rand(36).to_s(36)}.join
  end
end

puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name

puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name

# puts "Robot 3: "
# robot3 = Robot.new
# puts robot3.name
# puts robot3.name
# puts "Resetting to factory settings."
# robot3.reset
# robot3.name
# robot3.name
