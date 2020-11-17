statement = 'The Flintstones Rock'

array_statement = []

statement.split.each do |letter|
  array_statement << letter.split('')
  array_statement = array_statement.flatten
end

array_statement.each_with_object(Hash.new(0)) { |k, v| v[k] += 1 }

# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end