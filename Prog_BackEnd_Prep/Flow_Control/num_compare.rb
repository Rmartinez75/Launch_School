puts 'Give me a number between 0 and 100'
num = gets.chomp.to_i

num_chosen = case
when num <= 50
  'This number is between 0 and 50'
when num > 50 && num <= 100
  'This number is greater than 50 but less then 100'
else 
  'You didnt read correctly'
end

p num_chosen