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

  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    when input == input.upcase
  end
end

puts "I am Bob.  What the hell do you want?"
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
end

