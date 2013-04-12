
=begin
parts of the game

ships
players
board
play_game

=end



class Players

  def initialize
    player_battleships
    player_select_squares
  end

  def player_battleships
  end

  def player_select_squares
  end


end


class PlayGame

  def inititalize
    play_turn
    play_again?
  end

  def play_turn
    puts "it is #{:player}'s turn"

  end

  def sink_ship?
    if 
      display_you_sunk_my_battleship 
    

  end

  def win?
  end

  def play_again?
  end

  #display

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

  def display_winner_message
    puts "#{:player} you have won this round, but #{loser} shall win the war."
  end

  def display_play_again
    puts "Would you like to battle again?"
  end


end

