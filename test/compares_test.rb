# various types of compares
require 'test_helper'
require 'compares'

class CompareTest < Minitest::Test

  def setup
    @c = Compares.new
  end

  # this compares objects which will fail even thought the strings
  # have the same content...
  def test_compare_strings_are_equal
    assert_equal @c.string1, @c.string2
  end

  # assert same tests of the objects are the same which for strings will not be the case.
  def test_compare_strings_are_same
    assert_same @c.string1, @c.string2
  end

  def test_compare_arrays
  assert_equal @c.pets, @c.animals
  end



end



