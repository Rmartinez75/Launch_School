SUITS = ['Hearts', 'Diamond', 'Clubs', 'Spades']
DECK = (2..10).to_a + ['Jack', 'Queen', 'King', 'Ace']

loop do
  players_cards = []
  computer_cards = []

  def prompt(msg)
    puts "=> #{msg}"
  end

  def first_deal(arr)
    suit = []
    num = []
    2.times do
      suit << SUITS.sample
      num << DECK.sample
    end
    arr << num.zip(suit)
  end

  def add_cards(arr)
    card_hold = []
    arr.each do |first_arr|
      first_arr.each do |second_arr|
        if second_arr[0] == 'King' ||
           second_arr[0] == 'Queen' ||
           second_arr[0] == 'Jack'
           second_arr[0] = 10
        elsif second_arr[0] == "Ace"
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
    card_hold << DECK.sample
    card_hold << SUITS.sample
    arr[0] << card_hold
  end

  prompt('Welocome to the game 21. Would you like to play?(y or n)')
  play_answer = gets.chomp

  if play_answer == 'y' || play_answer == 'Y'
    first_deal(players_cards)
    first_deal(computer_cards)
  elsif play_answer == 'n' || play_answer == 'N'
    break
  end

  prompt("Computer is showing #{computer_cards[0][0][0]} of #{computer_cards[0][0][1]}")

  prompt("You were dealt #{players_cards[0][0][0]} of #{players_cards[0][0][1]} and #{players_cards[0][1][0]} of #{players_cards[0][1][1]}")

  if add_cards(players_cards) == 21
    prompt('YOU WON!!')
    break
  end

  if add_cards(computer_cards) == 21
    prompt('Sorry. You lost. Dealer has 21!')
    break
  end

  loop do
    loop do
      puts "hit(h) or stay(s)?"
      answer = gets.chomp

      if answer != 'h' || answer != 's'
        prompt('That is not a valid choice. Please try again.')
      elsif answer == 'h'
        deal_one_card(players_cards)
      end
  
      prompt("#{players_cards[0][-1][0]} of #{players_cards[0][-1][1]}")
      prompt("Totaling: #{add_cards(players_cards)}")
    end
    
    if add_cards(players_cards) > 21
      prompt("Sorry. Its a bust! Dealer wins")
      break
    end

    loop do
      deal_one_card(computer_cards)
      if add_cards(computer_cards) >= 17
        break
      end
    end
    puts computer_cards
  end

  
  break
end
