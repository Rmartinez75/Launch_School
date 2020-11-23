array = [2, 3, 4, 5, 6, 7, 8, 9, 10, 12]

def oddities(arr)
  odd_arr = []
  arr.each_with_index do |elem, index|
    if (index % 2 != 0) then
      odd_arr << elem
    end
  end
  odd_arr
end

oddities(array)
