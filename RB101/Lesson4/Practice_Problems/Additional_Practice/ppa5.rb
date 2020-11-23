flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |element, index|
  puts index if element.include?('Be')
end