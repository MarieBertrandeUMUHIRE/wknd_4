# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
module Common_operations

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator

  include Common_operations
end

class FancyCalculator

  include Common_operations

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end


# Copy your driver code from the previous exercise and more below:

puts "TEsting Calculators"

calculator_1 = SimpleCalculator.new
result = calculator_1.multiply(5, 2)

puts "The method returned:"
puts result

if result == 10
  puts "PASS: The simple calculator works"
else
  puts "F"
end


calculator_2 = FancyCalculator.new
result = calculator_2.add(2,4)

puts "The method returned:"
puts result

if result == 6
  puts "PASS: The inheritance was successful"
else
  puts "F"
end

calculator_3= WhizBangCalculator.new
result = calculator_3.square_root(16)

puts "Testing the square root method on Whiz Bang Calculator"

puts "The method returned:"
puts result

if result == 4
  puts "PASS: The WhizBangCalculator inherited from the FancyCalculator"
else
  puts "F"
end

calculator_4 = WhizBangCalculator.new
result = calculator_4.multiply(3, 5)

puts "Testing the multiply method on Whiz Bang Calculator"
puts result

if result == 15
  puts "PASS: The WhizBangCalculator inherited from the FancyCalculator"
else
  puts "F"
end