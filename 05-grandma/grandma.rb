class Grandma

  def exit_word
    EXIT_WORD
  end

  def respond_to(input)

    if input == EXIT_WORD
    elsif input.upcase == input
      "NO, NOT SINCE #{ rand(1930..1950)}!"
    else
      "HUH?!  SPEAK UP, SONNY!"
    end
  end

  def converse

    puts "HOW YOU DOIN?!"

    input = ""
    
    while statement != EXIT_WORD
      input = gets.chomp
      puts respond_to(input)
    end
  end

end

Grandma.new.converse

