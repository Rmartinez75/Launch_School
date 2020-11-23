arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.each do |hash|
  hash.each do |k, v|
    v.each {|num| p num if num.even?}
  end
end
    