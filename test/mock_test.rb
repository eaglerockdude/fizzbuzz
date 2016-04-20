require 'test_helper'

# using mock test
# used to test method calls

# Mocks are pre-programmed with expectations which form a specification
# of the calls they are expected to receive. They can throw an exception
# if they receive a call they don't expect and are checked during verification
# to ensure they got all the calls they were expecting. (Martin Fowler article)
#
# All of the message expectations defined on Minitest::Mock instances serve
# as a contract that is absolutely strict and unforgiving. Any of the following
# violations will result in an error:
# • Failing to call an expected method
# • Calling any unexpected method
# • Calling an expected method more times than expected (though you
# may create multiple expectations for the same method)
# • Calling an expected method with unexpected arguments (wrong
# number, type, values, etc.
#
# My explanation : you have an object that calls methods(sends messages) to some other object.  If you don't
# have that other object on hand, you can use a "mock"  for it, which will accept your method calls and
# allow you to test the arguments, and the return values your program is supposed to use. (me))

 class MockTest < Minitest::Test
  def setup
    @mock = Minitest::Mock.new
  end

  # Method expectation with no arguments
  # Returns the value expected
  def test_expectation_with_no_arguments
    @mock.expect(:status, :awesome)
    status = @mock.status
    assert_equal :awesome, status
    @mock.verify
  end

  # Method expectation with explicit argument (Object)
  def test_expectation_with_specific_argument
    date = Date.parse('2015-11-07')
    @mock.expect(:status_on, :awesome, [date])
    status = @mock.status_on(date)
    assert_equal :awesome, status
    @mock.verify
  end

  # Method expectation with Class argument
  def test_expectation_with_class_argument
    date = Date.parse('2015-11-08')
    @mock.expect(:status_on, :awesome, [Date])
    status = @mock.status_on(date - 1)
    assert_equal :awesome, status
    @mock.verify
  end

  # Method expectation with block to validate arguments
  def test_expectation_with_block_validation
    @mock.expect(:status_on, :awesome) do |date_or_time|
      date_or_time.respond_to?(:to_date) && date_or_time.to_date.year >= 2014
    end
    status = @mock.status_on(DateTime.now)
    assert_equal :awesome, status
    @mock.verify
  end
end


