def countdown(num)
  if num >= 0
   countdown(num - 1)
   puts num
  end
end

countdown(10)