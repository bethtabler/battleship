


=begin

parts of the game

ships
players
board
play_game

2+ battleship


needs refactor and pull out player class. 
=end


class Player

attr_accessor :player, :ships

  def initialize
    @player = Player.new
    player_name
    player_ships
    player_ships(@player)
    player_picks_squares(@player)
  end

  def player_name
    player_name_message
    name = get.chomp
    @player = name
  end

  def Player_ships(@player)
    @battleship = Battleship.new
    @cruiser = Cruiser.new
    @destroyer = Destroyer.new
    @submarine = Submarine.new
    #do I need ship objects?
    player_picks_ship_message
    @ships = {'Battleship' => '1', 'Cruiser' => '2' 'Destroyer' => '3' 
      'Submarine' => '4'}
  

  def player_picks_squares(@player)
    player_picks_squares_message
    #somehow set squares for player and attach them to 'value' and through
    # game play remove 1 from the value pair after a hit. 


  end

end



class GameMechanics

  attr_accessor :player, :board

  def inititalize
    @board = Board.new
    how_many_players
    @current_play_index = 0  
    player_picks_board_size
    which_squares
    player_picks_opponents_ships
    @player_ships = []    
  end

# player selection

  def how_many_players
    @players = Player.new
  end

  def player_picks_board_size(@board)
  end

  def which_squares
  end

  def player_picks_opponents_ships
    #remove 1 from key value pair when selected by opponent. 
  end

# Playing the game

  def play!
    puts "It is #{@player}'s turn"
    until game_over? do
      start_next_players_turn
    end
  end

  def start_next_players_turn
    current_play_index += 1
    if @current_turn_index >= @players.size
        @current_turn_index = 0
    end
  end

  def player_makes_selection
  end


  def sink_ship?
    # if value pair = 0 then ship is sunk
  end

  def won?
    # if no all value pairs = 0 then @player = lost
  end

  def game_over?
    @players.select { | player | player.won? }.any?
    end
  end

  def play_again?
    display_play_again
    again = get.chomp
      if again == 'yes'.downcase
        play!
      end
    end
  end

  end

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
