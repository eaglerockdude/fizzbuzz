#
require 'minitest/autorun'
require "minitest/pride"

# class MockTest < Minitest::Test
#   def initialize
#     @mock = MiniTest::Mock.new
#   end
# end


@mock = Minitest::Mock.new

# Method expectation with no arguments
# Returns the value expected

@mock.expect(:status, :awesome)
status = @mock.status

# Method expectation with explicit argument (Object)
date = Date.parse('2015-02-20')
@mock.expect(:status_on, :awesome, [date])
status = @mock.status_on(date)

# Method expectation with Class argument
@mock.expect(:status_on, :awesome, [Date])
status = @mock.status_on(date - 1)

# Method expectation with block to validate arguments
@mock.expect(:status_on, :awesome) do |date_or_time|
  date_or_time.respond_to?(:to_date) && date_or_time.to_date.year >= 2014
end

@mock.status_on(DateTime.now)

@mock.verify


