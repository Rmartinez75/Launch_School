def palindrome(str)
  if str.downcase == str.downcase.reverse
    true
  else
    false
  end
end