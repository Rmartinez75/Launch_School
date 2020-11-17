def prompt(message)
  puts "==> #{message}"
end  

numbers = []

prompt('What is your name?')
name = gets.chomp.capitalize

prompt("Hello #{name}. You will be asked to enter 6 numbers. Press enter to begin")
prompt("Enter the 1st number:")
first = gets.chomp.to_i
numbers << first

prompt("Enter the 2nd number:")
second = gets.chomp.to_i
numbers << second

prompt("Enter the 3rd number:")
third = gets.chomp.to_i
numbers << third

prompt("Enter the 4th number:")
fourth = gets.chomp.to_i
numbers << fourth

prompt("Enter the 5th number:")
fifth = gets.chomp.to_i
numbers << fifth

prompt("Enter the 6th number:")
sixth = gets.chomp.to_i

def check_doubles(arr, num)
  if arr.include?(num)
    puts "The number #{num} apperars in #{arr}"
  else
    puts "The number #{num} does not appear in #{arr}" 
  end
end

check_doubles(numbers, sixth)


# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include? last_number
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end