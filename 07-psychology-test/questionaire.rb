require 'highline/import'

class questionaire

  def questions
    [
      ["What do you love?",]
      ["How are you today?",]
      ["What is your favorite sport?",]
      ["Did you eat breakfast",]
      ["Did you go out last weekend",]

    ].shuffle
    
  end

  def run
    
  end


end


# Write a program that contains 10 questions.

# The questions should be posed in random order.

# One of these questions is the question you really want the answer to. The other 9 are red herrings.

# The question you want an answer to should have only a small number of acceptable answers (e.g. 'yes'/'no', but it could be anything). If their answer does not match an acceptable answer, you must insist that they answer correctly, and ask them the question again.

# At the end of the program, you should base your conclusion on the one question you actually care about.

# ## Getting Started

# Instead of using `gets` and `puts` use the
# [highline](https://rubygems.org/gems/highline) gem. You can find more examples
# here in the [documentation](http://highline.rubyforge.org/doc/classes/HighLine.html).

# ```bash
# $ gem install highline
# ```

# ```ruby
# require 'highline/import'

# loves = ask "What do you love?"

# feeling = ask "How are you today?" do |q|
#   q.default = "good"
# end

# wants_candy = ask "Do you want <%= color('candy',RED) %>?" do |q|
#   q.validate = /^(yes|no)$/
# end

# say "Your favorite color is <%= color('blue',BLUE) %>"
# ```
