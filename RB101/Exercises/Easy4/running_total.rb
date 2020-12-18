arr1 = [2, 3, 4, 5, 10]

def running_totals(arr)
  array = []
  arr.each do |num|
    previous = array.last || 0
    array << previous += num
  end
  puts "#{arr} == #{array}"
end

running_totals([2, 5, 13])
running_totals([14, 11, 7, 15, 20])
running_totals([3])
running_totals([])
