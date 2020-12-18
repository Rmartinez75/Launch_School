h = {a:1, b:2, c:3, d:4}

h.each do |k, v|
  if k == :b
    p v
  end
end

h[:e] = 5
p h

h.each do |k, v|
  if v < 3.5
    h.delete(k)
  end
end

p h