










=begin

parts of the game

ships
players
board
play_game

multi-player battleship

=end





class GameMechanics

  attr_accessor: :player

  def inititalize
    how_many_players
    how_many_squares
    player_picks_ships
    player_picks_squares
  end


  def how_many_players(number_of_players)
  end

  def how_many_squares(number_of_squares)
  end

  def player_picks_ships(:player)
  end

  def player_picks_squares(:player)
  end

  def play_turn(@player)
    puts "it is #{:player}'s turn"
      @player.player_makes_selection
  end

  def player_makes_selection
  end


  def sink_ship?
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


