arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|num| num.start_with?('s') || num.start_with?('w')}

p arr