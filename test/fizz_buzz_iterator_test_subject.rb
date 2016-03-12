require 'test_helper'
require 'fizz_buzz_iterator'

describe FizzBuzzIterator do

  # before do
  #   @iterator = FizzBuzzIterator.new
  # end

  # the subject functions works like the LET function in that it redefines a LET block
  # with the same name.

    subject(FizzBuzzIterator.new)

  it "outputs sequential values starting from 1"  do
    expect(@iterator.next).must_equal '1'
    expect(@iterator.next).must_equal '2'
    expect(@iterator.next).must_equal 'Fizz'
    expect(@iterator.next).must_equal '4'
    expect(@iterator.next).must_equal 'Buzz'
    expect(@iterator.next).must_equal 'Fizz'
  end

  # describe(besides establishing a the top level test case)
  # can also define scopes within to group related tests.

  describe "when initialized with a starting value"   do

    ## this before applies to this block or its "local"
    # before do
    #   @iterator = FizzBuzzIterator.new(10)
    # end

    subject(FizzBuzzIterator.new(10))

    it "outputs sequential values starting from the starting value"  do
      expect(@iterator.next).must_equal 'Buzz'
      expect(@iterator.next).must_equal '11'
      expect(@iterator.next).must_equal 'Fizz'
      expect(@iterator.next).must_equal '13'
      expect(@iterator.next).must_equal '14'
      expect(@iterator.next).must_equal 'FizzBuzz'
    end

  end

end    #describe end