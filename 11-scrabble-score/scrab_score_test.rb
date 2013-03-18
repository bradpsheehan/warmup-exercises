source "https://rubygems.org"
require_relative './scrabble_score'
require 'minitest/autorun'

gem "rb-fsevent", "~> 0.9.3"
gem 'guard-shell'

class ScrabbleTest < MiniTest::Unit::TestCase
  def test_empty_word_scores_zero
    assert_equal 0, Scrabble.score("")
  end

  def test_simple_word_scores_the_number_of_letters
    assert_equal 6, Scrabble.score("street")
  end

  def test_complicated_word_scores_more
    assert_equal 20, Scrabble.score("quirky")
  end

  def test_case_insensitive
    assert_equal 20, Scrabble.score("MULTIBILLIONAIRE")
  end

  # def test_you_can_play_a_double_letter

end
