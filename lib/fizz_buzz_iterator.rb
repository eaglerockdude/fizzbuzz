# minispec "specs" which try to simulate rspec syntax

class FizzBuzzIterator
  def initialize(start = 1)
    @counter = 1
    @fb = FizzBuzz.new
  end

  def next
    input = @counter
    @counter += 1
    @fb.convert(input)
  end

end