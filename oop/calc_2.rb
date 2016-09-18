# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator
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

class FancyCalculator
  include SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:
puts "TESTING calc_2..."
puts

calculator = FancyCalculator.new

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

result = calculator.square_root(25)

puts "Your method returned:"
puts result
puts

if result == 5.0
  puts "PASS!"
else
  puts "F"
end
