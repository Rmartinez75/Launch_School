def loan_calc(p, j, n)
  monthly_payments = p * (j / (1 - (1 + j)**(-n)))
  monthly_payments
end

def convert_interest(interest)
  interest = interest.to_f / 100
  interest = interest / 12
end

def loan_in_months(months)
  months * 12
end

def prompt(message)
  puts("=> #{message}")
end

prompt ('Welcome to your friendly Loan Calculator!')
puts '-----------------------------------------------'

puts 'Please enter your name.'
name = gets.chomp.capitalize

prompt ("Hello #{name}!")

loop do
  prompt('How much were you looking to borrow?')
  loan_amt = gets.chomp.to_f

  prompt ('What yearly interest rate percent do you think you would qualify for?')
  month_interest_rate = convert_interest(gets.chomp)

  prompt ('How many years would you like to pay this off in?')
  loan_duration = loan_in_months(gets.chomp.to_f)

  amount = loan_calc(loan_amt, month_interest_rate, loan_duration).round(2)

  prompt("At the given rate your monthly payments would be:  $#{amount}")

  puts '-----------------------------------------------'
  puts '-----------------------------------------------'
  puts '-----------------------------------------------'

  prompt('Would you like to try again? (Y or N)')
  repeat = gets.chomp
  if repeat != 'y' || repeat != 'Y'
    break
  end
end