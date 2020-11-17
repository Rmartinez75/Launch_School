['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#{"a" => "ant", "b" => "bear", "c" => "cat"} the block asked to take index 0 of the value value and create a key from it 