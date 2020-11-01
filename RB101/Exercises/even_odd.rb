count = 1

loop do
  5.times do
    if count % 2 == 0
      puts "=>#{count} is an even number"
    else
      puts "=>#{count} is an odd number"
    end
    count += 1
  end
  
  break
end