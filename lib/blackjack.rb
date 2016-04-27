def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
    if input == 'h'
      new_card = deal_card
      current_card_total += new_card
    elsif input == 's'
    else (input != "s" && input != "h")
      invalid_command
      prompt_user
  end
  current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  n = initial_round
  until n > 21
    n = hit?(n)
    display_card_total(n)
  end
  end_game(n)
end

    
