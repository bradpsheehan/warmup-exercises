class WordProblem

  attr_reader :question

  def initialize(question)
    @question = question.split
  end

  def answer
    calculate
  end

  def calculate
    # first_addend = @question[2].to_i
    # second_addend = @question[4].to_i
    # first_addend + second_addend
    question.match(/what is (-?\d+) plus (-?\d+)\?/) do |m|
      m[1].to_i + m[2].to_i
    end
  end


end
  # @question.match(/What is (-?\d+) plus (-?\d+)?/)
