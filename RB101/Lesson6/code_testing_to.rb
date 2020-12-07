DECK = [['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'], ['H', "ACE"], ['H', "JACK"], ['H', "QUEEN"], ['H', "KING"], ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', "ACE"], ['D', "JACK"], ['D', "QUEEN"], ['D', "KING"], ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', "ACE"], ['S', "JACK"], ['S', "QUEEN"], ['S', "KING"], ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', "ACE"], ['C', "JACK"], ['C', "QUEEN"], ['C', "KING"]]

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'ACE'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'ACE' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

answer = nil
loop do
  puts 'hit or stay?'
  answer = gets.chomp
  break if answer == 'stay' || busted?
end

# players_cards = []
# dealers_cards = []

# 2.times.each do |first|

#   players_cards.push(DECK.sample)
#   dealers_cards.push(DECK.sample)
# end

# suit = ''
# 2.times do
#   suit << SUIT.sample
# end

# p suit
# p players_cards
# p dealers_cards
# def deal
#   DECK.each do |cards|
# end

# deal
