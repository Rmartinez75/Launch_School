puts "Please write word or multiple words:"
characters = gets.chomp
num_characters = characters.delete(' ').count(characters)
puts "There are #{num_characters} characters in '#{characters}'"