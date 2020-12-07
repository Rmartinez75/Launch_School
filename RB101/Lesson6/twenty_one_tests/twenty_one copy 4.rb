SUITS = ['Hearts', 'Diamond', 'Clubs', 'Spades']
DECK = (2..10).to_a + ['Jack', 'Queen', 'King', 'Ace']

def prompt(msg)
  puts "=> #{msg}"
end
prompt('Welocome to the game 21. Would you like to play?(y or n)')

players_cards = []
computer_cards = []

def first_deal(arr)
  suit = []
  num = []
  2.times do
    suit << SUITS.sample
    num << DECK.sample
  end
  arr << num.zip(suit)
end

first_deal(players_cards)
first_deal(computer_cards)

p players_cards[0]
p computer_cards[0][0]

def add_cards(arr)
  card_hold = []
  arr.each do |first_arr|    
    first_arr.each do |second_arr|
      if second_arr[0] == 'King' || second_arr[0] == 'Queen' || second_arr[0] == 'Jack'
        second_arr[0] = 10
      elsif second_arr[0] =="Ace"
        if card_hold.sum < 11
          second_arr[0] = 11
        else
          second_arr[0] = 1
        end
      end
      card_hold << second_arr[0]    
    end  
  end
  card_hold.sum
end

def deal_one_card(arr)
  card_hold = []
  card_hold << SUITS.sample
  card_hold << DECK.sample
  arr[0] << card_hold
end

puts "hit(h) or stay(s)?"
answer = gets.chomp

if answer == 'h'
  deal_one_card(players_cards)
end

# puts add_cards(players_cards)
p players_cards[0]