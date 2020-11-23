hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k, v|
  v.each do |vow|
    vow.chars.each {|vowel| puts vowel if vowel =~ /[aeiou]/}
  end
end
