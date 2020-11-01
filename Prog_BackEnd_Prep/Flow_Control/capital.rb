def capital (string)
  if string.length > 10
    string.upcase
  else 
    'This string is too short!'
  end
end

p capital('hello')