require 'minitest/autorun'
require_relative 'difference_of_squares'

class DifferenceOfSquaresTest < Minitest::Test
  def test_square_of_sum_5
    assert_equal 225, Squares.new(5).square_of_sum
  end

  def test_square_of_sum_10
    assert_equal 3_025, Squares.new(10).square_of_sum
  end

  def test_square_of_sum_100
    assert_equal 25_502_500, Squares.new(100).square_of_sum
  end

  def test_sum_of_squares_5
    assert_equal 55, Squares.new(5).sum_of_squares
  end

  def test_sum_of_squares_10
    assert_equal 385, Squares.new(10).sum_of_squares
  end

  def test_sum_of_squares_100
    assert_equal 338_350, Squares.new(100).sum_of_squares
  end

  def test_difference_of_squares_0
    assert_equal 0, Squares.new(0).difference
  end

  def test_difference_of_squares_5
    assert_equal 170, Squares.new(5).difference
  end

  def test_difference_of_squares_10
    assert_equal 2_640, Squares.new(10).difference
  end

  def test_difference_of_squares_100
    assert_equal 25_164_150, Squares.new(100).difference
  end

  def test_consistent_difference
    squares = Squares.new(10)
    assert_equal squares.difference, squares.difference
  end
end