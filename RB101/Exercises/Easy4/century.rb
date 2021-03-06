def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

puts century(1000)

# def century(year)
#   if year[0] == '1' || year[1] == '1'
#     "#{year}st"
#   elsif year[0] == '2' || year[1] == '2'
#     "#{year}nd"
#   elsif year.include?('3')
#     "#{year}rd"
#   else
#     "#{year}th"
#   end
# end

# puts century('12')