# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)


module BasicCalculations

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
  include BasicCalculations
end

class FancyCalculator

  include BasicCalculations

  def square_root(number)
    Math.sqrt(number)
  end

end


# Copy your driver code from the previous exercise below:

puts "TEsting Calculators"

calculation_1 = SimpleCalculator.new
result = calculation_1.multiply(5, 2)

puts "The method returned:"
puts result

if result == 10
  puts "PASS: The simple calculator works"
else
  puts "F"
end



calculation_2 = FancyCalculator.new
result = calculation_2.add(2,4)

puts "The method returned:"
puts result

if result == 6
  puts "PASS: The inheritance was successful"
else
  puts "F"
end

