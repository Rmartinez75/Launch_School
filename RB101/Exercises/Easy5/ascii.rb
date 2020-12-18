def ascii_value(str)
  arr = []
  str.split('').each do |char|
    arr << char.ord
  end
  arr.sum
end

ascii_value('Four score')
ascii_value('Launch School')
ascii_value('a')
ascii_value('')
