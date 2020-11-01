a = [1, 2, 3, 4]

a.each_with_index {|idx, val| p "#{idx}. #{val+1}"}