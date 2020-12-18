def num_palindrome(elem)
  elem.to_s == elem.to_s.reverse
end

p num_palindrome(33533).inspect