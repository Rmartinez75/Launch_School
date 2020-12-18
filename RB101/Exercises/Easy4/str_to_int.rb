DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def str_to_int(str)
  digits = str.chars.map {|char| p DIGITS[char]}

  # value = 0
  # digits.each {|digit| value = 10 * value + digit}
  # value
end

p str_to_int('4321')