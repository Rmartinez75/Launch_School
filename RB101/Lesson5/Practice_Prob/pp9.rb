arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

ordered_arr = []
arr.each do |sub|
  ordered_arr << sub.sort.reverse
end
