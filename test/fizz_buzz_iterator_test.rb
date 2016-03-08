require 'test_helper'
require 'fizz_buzz_iterator'

describe FizzBuzzIterator do

  before do
    @iterator = FizzBuzzIterator.new
  end

  it "outputs sequential values starting from 1"  do
    expect(@iterator.next).must_equal '1'
    expect(@iterator.next).must_equal '2'
    expect(@iterator.next).must_equal 'Fizz'
    expect(@iterator.next).must_equal '4'
    expect(@iterator.next).must_equal 'Buzz'
    expect(@iterator.next).must_equal 'Fizz'
  end

  describe "when initialized with a starting value"   do
  before do
    @iterator = FizzBuzzIterator.new(10)
  end

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