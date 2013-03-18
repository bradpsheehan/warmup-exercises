require './say'
require 'minitest/autorun'
require 'minitest/pride'

class SayTest < MiniTest::Unit::TestCase

  def test_number_can_be_translated_into_english
    assert_equal "twenty two", Say.new(22).in_english
  end

  def test_another_number_can_be_translated_into_english
    assert_equal "five", Say.new(5).in_english
  end

end
