SUITS = ['Hearts', 'Diamond', 'Clubs', 'Spades']
DECK = (2..10).to_a + ['Jack', 'Queen', 'King', 'Ace']

suit = []
num = []
2.times do
  suit << SUITS.sample
  num << DECK.sample
end

puts "You have a #{num[0]} of #{suit[0]} and a #{num[1]} of #{suit[1]}"

def deal_one_card(suit, num)
  suit << SUITS.sample
  num << DECK.sample
end

puts "hit(h) or stay(s)?"
answer = gets.chomp

if answer == 'h'
  deal_one_card(suit, num)
end

puts num