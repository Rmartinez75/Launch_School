def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_num?(number)
 number.to_i != 0
end 

def operation_to_message(op)
  case op 
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Hello. What is your name?')
name = Kernel.gets().chomp()

prompt("Welcome to Calculator #{name}") 

loop do
  num1 = ''

  loop do
    prompt('Please enter first number: ')
    num1 = Kernel.gets().chomp().to_i

    if valid_num?(num1)
      break
    else
      prompt('Hmm... That doesnt look like a valid number')
    end
  end

  num2 = ''

  loop do
    prompt('Please enter second nubmer: ')
  num2 = Kernel.gets().chomp().to_i

    if valid_num?(num2)
      break
    else
      prompt('Hmm... That doesnt look like a valid number')
    end
  end

  prompt(' What operation would you like to perform? 
  1)add
  2)subtract
  3)mulitply
  4)divide')


  operation = ''

  loop do 
    operation = Kernel.gets().chomp()
    operator = ['1', '2', '3', '4']
    if operator.include?(operation)
      break
    else
      prompt('Mush choose 1, 2, 3, or 4')
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
             when '1'
               num1 + num2
             when '2'
               num1 - num2
             when '3'
               num1 * num2
             when '4'
               num1.to_f / num2.to_f
           end 

  prompt("The answer is #{result}")
  prompt("Do you want to try again? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you for trying my calculator!')