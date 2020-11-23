val = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
val.map do |hash|
  new_val = hash.values
  new_val.flatten.flatten
end

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end

