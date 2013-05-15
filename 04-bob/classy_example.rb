<<<<<<< HEAD
class Bob    

  def chat(input)
  end

  def response_for(input)
   if question?(input)
    puts "Sure."
   # when 'statement' then puts "Whatever."
   # when 'all_caps' then puts "Woah, chill out!"
   # when  then puts "Fine  Be that way!."
   # else puts 
  end

=======
class Bob
  def chat(input)
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
<<<<<<< HEAD
    when input == input.upcase
  end
end

puts "I am Bob.  What the hell do you want?"
=======
    !input.empty? && input == input.upcase
  end
end

<<<<<<< HEAD
puts "Hey bro, wassup?"
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
<<<<<<< HEAD
end

=======
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
=======
if ENV["RUBY_ENV"] == "test"
else
  puts "Hey bro, wassup?"
  bob = Bob.new
  while true
    input = gets.chomp.strip
    bob.chat(input)
  end
end
>>>>>>> 7b1a477b73097ebf9b95bce021b78fbdaf5daf35
