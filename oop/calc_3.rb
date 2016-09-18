# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module FancyCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

module WhizBangCalculator
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total, first_number) }
    total
  end
end

class SimpleCalculator
  include FancyCalculator
  include WhizBangCalculator

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

# Copy your driver code from the previous exercise and more below:
puts "TESTING calc_3..."
puts

calculator = SimpleCalculator.new

result = calculator.add(5, 2)

puts "Your method returned:"
puts result
puts

if result == 7
  puts "PASS!"
else
  puts "F"
end

result = calculator.multiply(5, 2)

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = calculator.square_root(81)

puts "Your method returned:"
puts result
puts

if result == 9.0
  puts "PASS!"
else
  puts "F"
end

result = calculator.hypotenuse(3, 4)

puts "Your method returned:"
puts result
puts

if result == 5.0
  puts "PASS!"
else
  puts "F"
end

result = calculator.exponent(3, 4)

puts "Your method returned:"
puts result
puts

if result == 81
  puts "PASS!"
else
  puts "F"
end
