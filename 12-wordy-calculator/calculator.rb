class Calculator

  # def ask(question)
  #   question = question.split(" ")
  #   question[2].to_i + question[4].gsub("?", "").to_i
  # end

  def ask(question)
    question.match(/What is (-?\d+) plus (-?\d+)?/) do |m|
      m[1].to_i + m[2].to_i
    end
  end

end
