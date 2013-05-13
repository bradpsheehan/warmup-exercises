class Anagram
  attr_reader :word

  def initialize(word)
    @word =  word.split
  end

  def match(options)
    # want to see if a combination of the word letters matches array element
    # input 'ba' == length is 2
    # array == ['ab', 'abc', 'bac']
    good_length = word.length
    matches = []
    options.each do |element|
      if element.length == good_length
        matches << element
      end
    end
    matches.delete_if {|element| element == nil}
  end

end
