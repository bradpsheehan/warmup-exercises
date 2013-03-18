require './chunks'
require 'minitest/autorun'
require 'minitest/pride'

class ChunksTest < MiniTest::Unit::TestCase

  def test_hundreds
    assert_equal [0, 0, 0, 123], Chunks.new(123).num_parse
  end

  def test_one_thousand
    assert_equal [0, 0, 1, 0], Chunks.new(1000).num_parse
  end

  def test_thousands
    assert_equal [0, 0, 2, 345], Chunks.new(2345).num_parse
  end

  def test_millions
    assert_equal [0, 1, 234, 567], Chunks.new(1234567).num_parse
  end

  def test_billions
    assert_equal [1, 234, 567, 890], Chunks.new(1234567890).num_parse
  end

end

class ArrayTest < MiniTest::Unit::TestCase

  def test_groups_of_with_an_even_number_of_groups
    array = [ 1, 2, 3, 4, 5, 6 ]
    expected = [ [1,2], [3,4], [5,6] ]
    result = array.groups_of(2)

    assert_equal expected, result
  end

  def test_groups_of_with_groups_of_three
    array = [ 1, 2, 3, 4, 5, 6 ]
    expected = [ [1,2,3], [4,5,6] ]
    result = array.groups_of(3)

    assert_equal expected, result
  end

  def test_groups_with_remainder_elements_in_the_array
    array = [ 1, 2, 3, 4, 5 ]
    expected = [ [1,2], [3,4], [5] ]
    result = array.groups_of(2)

    assert_equal expected, result
  end


end
