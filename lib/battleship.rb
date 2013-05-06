

  # display

  def player_picks_squares_message
    puts "Which squares would you like to put your ships on?"
  end

  def player_picks_ship_message
    puts "Which ships would you like to select?"#add how to select ships info
  end

  def player_name_message
    puts "What is your name?"
  end

  def display_oppening_message
    puts "battleship rules:" #add actual battleship rules.
  end

  def display_you_sunk_my_battleship
    puts "You sunk my battleship. Damn Damn Damn"
  end

  def display_you_hit_my_Battleship
    puts "You hit my battleship. For Queen and country, you shall mot sink my ship!"
  end

  def display_you_missed_my_battleship
    puts "You missed my battleship. Hahahaha Go back to the old country you wanker."

  def display_winner_message(@player)
    puts "#{@player} you have won this round, but #{loser} shall win the war."
  end

  def display_play_again
    puts "Would you like to battle again?"
  end


end
