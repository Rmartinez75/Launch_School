def leap_year?(year)
  if (year % 4).zero? && year % 100 != 0
    true
  elsif (year % 100).zero? && (year % 400).zero?
    true
  else
    false
  end
end

p leap_year?(1752)
