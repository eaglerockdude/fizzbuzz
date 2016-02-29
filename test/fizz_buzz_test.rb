require "test_helper"
require "fizz_buzz"

class FizzBuzzTest < Minitest::Test

  def setup
    @fb = FizzBuzz.new
  end

  def test_converts_multiples_of_fifteen_to_fizzbuzz

    assert_equal 'FizzBuzz', @fb.convert(15)
    assert_equal 'FizzBuzz', @fb.convert(45)
    assert_equal 'FizzBuzz', @fb.convert(90)
  end

  def test_converts_multiples_of_five_to_buzz

    assert_equal 'Buzz', @fb.convert(5)
    assert_equal 'Buzz', @fb.convert(20)
    assert_equal 'Buzz', @fb.convert(100)
  end

  def test_converts_multiples_of_three_to_fiz

    assert_equal 'Fizz', @fb.convert(3)
    assert_equal 'Fizz', @fb.convert(18)
    assert_equal 'Fizz', @fb.convert(42)

  end

  def test_just_returns_the_same_number_for_all_others

    assert_equal '1', @fb.convert(1)
    assert_equal '101', @fb.convert(101)
    assert_equal '2014', @fb.convert(2014)
  end

end
