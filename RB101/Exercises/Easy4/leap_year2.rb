def leap_year?(year)
  if year >= 1752
    if (year % 4).zero? && year % 100 != 0
      true
    elsif (year % 100).zero? && (year % 400).zero?
      true
    else
      false
    end
  elsif year < 1752
    if (year % 4).zero?
      true
    else
      false
    end
  end
end

p leap_year?(1752)
p leap_year?(1700)
p leap_year?(100)
p leap_year?(400)
p leap_year?(1)

