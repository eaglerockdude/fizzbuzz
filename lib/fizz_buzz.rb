# minitest

# if number passed in is divisible by 5 and 3 return "Fizzbuzz"
# else if only divisible by 3 return "Fizz"  else if only by 5 "Buzz"
# othewise just return the number
#

class FizzBuzz
  def convert(number)

    if number % 15 == 0
      "FizzBuzz"
    elsif number % 5 == 0
      "Buzz"
    elsif number % 3 == 0
      "Fizz"
    else
      number.to_s
    end

  end

end