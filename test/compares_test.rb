# various types of compares
require 'test_helper'
require 'compares'

class CompareTest < Minitest::Test

  def setup
    @c = Compares.new
  end

  def compare_strings_are_equal

    assert_equal @c.string1, @c.string2

  end

end



