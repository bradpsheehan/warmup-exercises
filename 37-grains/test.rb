require 'minitest/autorun'
require 'minitest/pride'
require_relative './grains'

class GrainsTest < MiniTest::Unit::TestCase

  def test_square_1
    assert_equal 1, Grains.new.square(1)
  end

  def test_square_2
    assert_equal 2, Grains.new.square(2)
  end

  def test_square_3
    assert_equal 4, Grains.new.square(3)
  end

  def test_square_4
    assert_equal 8, Grains.new.square(4)
  end

  def test_square_16
    assert_equal 32768, Grains.new.square(16)
  end

  def test_square_32
    assert_equal 2147483648, Grains.new.square(32)
  end

  def test_square_64
    assert_equal 9223372036854775808, Grains.new.square(64)
  end

  def test_total_grains
    assert_equal 18446744073709551615, Grains.new.total
  end

end
